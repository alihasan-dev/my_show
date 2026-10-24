import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_show/core/widgets/custom_gradient_button.dart';
import '../provider/watchlist_fav_provider.dart';
import '/core/constants/movie_colors.dart';
import '/core/utils/app_extension_method.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../../core/widgets/no_data_widget.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/widgets/people_shimmer_widget.dart';
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
    // Timer? timer;
    // useEffect(() {
    //   void listener() {
    //     if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 200) {
    //       if (timer == null || !timer!.isActive) {
    //         ref.read(popularPeopleProvider.notifier).popularPeople();
    //         timer = Timer(const Duration(seconds: 2), () {});
    //       }
    //     }
    //   }
    //   scrollController.addListener(listener);
    //   return () {
    //     scrollController.removeListener(listener);
    //     timer?.cancel();
    //   };
    // }, [scrollController]);
    
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
            ? 'Watchlist'
            : 'Favourite',
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
                            // height: 400,
                            child: Container(
                              decoration: BoxDecoration(
                                color: MovieColors.white.withValues(alpha: 0.05),
                                borderRadius: kIsWeb
                                ? BorderRadius.all(Radius.circular(20))
                                : BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 20
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MovieText(
                                    title: type == WatchlistFavType.watchlist
                                    ? 'Clear your watchlist?'
                                    : 'Clear your favourites?',
                                    style: textTheme.titleMedium?.copyWith(
                                      color: MovieColors.textPrimary,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  MovieText(
                                    title: 'Are you sure you want to remove all movies and shows from your ${type == WatchlistFavType.watchlist ? 'watchlist': 'favourites'}? This action cannot be undone.',
                                    style: textTheme.titleMedium?.copyWith(
                                      color: MovieColors.white.withValues(alpha: 0.7),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Row(
                                    spacing: 12,
                                    children: [
                                      Expanded(
                                        child: CustomGradientButton(
                                          label: 'Cancel',
                                          applyGradient: false,
                                          textAlign: TextAlign.center,
                                          textStyle: textTheme.labelMedium?.copyWith(
                                            fontSize: 14,
                                            color: MovieColors.white.withValues(alpha: 0.8)
                                          ),
                                          padding: EdgeInsetsGeometry.symmetric(vertical: 10),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusGeometry.circular(10),
                                            side: BorderSide(
                                              width: 1.0,
                                              color: MovieColors.grey.withValues(alpha: 0.6)
                                            ),
                                          ),
                                          onTap: () => context.pop(),
                                        ),
                                      ),
                                      Expanded(
                                        child: CustomGradientButton(
                                          label: 'Clear All',
                                          applyGradient: false,
                                          textAlign: TextAlign.center,
                                          textStyle: TextStyle(color: MovieColors.white),
                                          padding: EdgeInsetsGeometry.symmetric(vertical: 10),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusGeometry.circular(10),
                                            side: BorderSide(
                                              width: 1.0,
                                              color: MovieColors.red
                                            ),
                                          ),
                                          color: MovieColors.red,
                                          onTap: () {
                                            context.pop();
                                            ref.read(watchlistFavProvider.notifier).clearAllWatchFavList(type);
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ),
                        );
                      }
                    );
                  }
                },
                itemBuilder: (context) => [
                  PopupMenuItem<String>(
                    value: 'clear',
                    child: MovieText(
                      title: 'Clear All',
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
                    ? 'No Favourites Yet'
                    : 'Your Watchlist is Empty',
                    subtitle: type == WatchlistFavType.favourite
                    ? 'Found a movie or show you love.\nAdd it to your favourites and keep your personal collection close.'
                    : 'Keep track of movies and shows you want to watch.\nAdd your next favourite to watch later.',
                    // onRetry: () => ref.read(popularPeopleProvider.notifier).popularPeople(),
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
                        itemBuilder: (context, index) {
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
              error: (_,_) => NoDataWidget(
                icon: Icons.error_outline_rounded,
                title: 'Something Went Wrong',
                subtitle: 'We couldn\'t load the people list.\nPlease check your connection and try again.',
                // onRetry: () => ref.read(popularPeopleProvider.notifier).popularPeople(),
              ), 
              loading: () => PeopleShimmerWidget(
                crossAxisCount: constraints.maxWidth.getCrossAxisCount,
                screenType: constraints.maxWidth.screenType,
              ),
            );
          }
        ),
      ),
    );
  }
}