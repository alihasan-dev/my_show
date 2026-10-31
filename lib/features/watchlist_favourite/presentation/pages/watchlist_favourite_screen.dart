import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/core/constants/movie_colors.dart';
import '/core/utils/app_extension_method.dart';
import '../provider/watchlist_fav_provider.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/no_data_widget.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/widgets/people_shimmer_widget.dart';
import '../../../../core/widgets/confirmation_dialog_widget.dart';
class WatchlistFavouriteScreen extends HookConsumerWidget {
  
  final WatchlistFavType type;

  const WatchlistFavouriteScreen({
    required this.type,
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watchFavList = ref.watch(watchlistFavProvider);
    final watchFavDataList = watchFavList.asData?.value;
    final scrollController = useScrollController();
    final textTheme = Theme.of(context).textTheme;
    
    useEffect(() { 
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(watchlistFavProvider.notifier).getWatchFavList(type);
      });
      return null;
    }, []);
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          centerTitle: false,
          title: Text(
            type == WatchlistFavType.watchlist
            ? AppStrings.watchlist
            : AppStrings.favourite,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18),
          ),
          actions: [
            if ((watchFavDataList ?? []).isNotEmpty) ...[
              PopupMenuButton<String>(
                tooltip: 'More options',
                onSelected: (value) {
                  if (value == 'clear') {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                          content: SizedBox(
                            width: 420,
                            child: ConfirmationDialogWidget(
                              title: type == WatchlistFavType.watchlist
                              ? AppStrings.clearYourWatchlist
                              : AppStrings.clearYourFavourite,
                              subTitle: type == WatchlistFavType.watchlist
                              ? AppStrings.clearYourWatchlistMsg
                              : AppStrings.clearYourFavouriteMsg,
                              onConfirm: () {
                                context.pop();
                                ref.read(watchlistFavProvider.notifier).clearAllWatchFavList(type);
                              },
                            ),
                          ),
                        );
                      }
                    );
                  }
                },
                itemBuilder: (_) => [
                  PopupMenuItem<String>(
                    value: 'clear',
                    child: MovieText(
                      title: AppStrings.clearAll,
                      style: textTheme.bodyLarge?.copyWith(
                        color: MovieColors.red
                      ),
                    ),
                  ),
                ],
              ),
            ]
          ],
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return watchFavList.when(
              data: (data) {
                if (data.isEmpty) {
                  return NoDataWidget(
                    icon: type == WatchlistFavType.favourite
                    ? Icons.favorite_border
                    : Icons.bookmark_outline,
                    title: type == WatchlistFavType.favourite
                    ? AppStrings.emptyFavourite
                    : AppStrings.emptyWatchlist,
                    subtitle: type == WatchlistFavType.favourite
                    ? AppStrings.emptyFavouriteMsg
                    : AppStrings.emptyWatchlistMsg,
                  );
                }
                ///sort based on created date
                data.sort((a, b) {
                  final firstCard = DateTime.parse(a.createdDate);
                  final secondCard = DateTime.parse(b.createdDate);
                  return secondCard.compareTo(firstCard);
                });
                return Column(
                  children: [
                    const SizedBox(height: 10),
                    Expanded(
                      child: GridView.builder(
                        controller: scrollController,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:  constraints.maxWidth.getCrossAxisCount,
                          mainAxisSpacing: constraints.maxWidth.screenType == ScreenType.mobile ? 4 : 8,
                          crossAxisSpacing: constraints.maxWidth.screenType == ScreenType.mobile ? 4 : 8,
                          childAspectRatio: 0.68
                        ), 
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 16
                        ),
                        itemCount: data.length,
                        itemBuilder: (_, index) {
                          final watchFav = data[index];
                          return Stack(
                            fit: StackFit.expand,
                            children: [
                              MovieImageWidget(
                                onTap: () {
                                  if (watchFav.id.isBlank) return;
                                  context.pushNamed(
                                    AppRoutes.movieDetails,
                                    queryParameters: {
                                      'id': watchFav.id,
                                      'type': watchFav.mediaType
                                    }
                                  );
                                },
                                imagePath: watchFav.posterPath.generateImageURL
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                                  color: MovieColors.black.withValues(alpha: 0.4),
                                  child: Center(
                                    child: MovieText(
                                      title: watchFav.title,
                                      maxLine: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                      ),
                    ),
                  ],
                );
              }, 
              error: (_, _) => NoDataWidget(
                icon: Icons.error_outline_rounded,
                title: AppStrings.somethingWentWrong,
                subtitle: type == WatchlistFavType.favourite
                ? AppStrings.errorFavouriteMsg
                : AppStrings.errorWatchlistMsg
              ), 
              loading: () => PeopleShimmerWidget(
                crossAxisCount: constraints.maxWidth.getCrossAxisCount,
                screenType: constraints.maxWidth.screenType,
              ),
            );
          },
        ),
      ),
    );
  }
}