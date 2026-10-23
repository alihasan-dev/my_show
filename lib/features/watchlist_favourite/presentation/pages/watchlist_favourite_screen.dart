import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
    final watchFavList = ref.watch(watchlistFavProvider(type));
    final scrollController = useScrollController();
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
    
    // useEffect(() { 
    //   ref.read(popularPeopleProvider.notifier).popularPeople();
    //   return null;
    // }, []);
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 0),
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