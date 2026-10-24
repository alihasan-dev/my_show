import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../widgets/trending_movies_widgets.dart';
import '../provider/now_playing_provider.dart';
import '../provider/popular_movies_provider.dart';
import '../provider/trending_movies_provider.dart';
import '../provider/upcoming_movie_provider.dart';
import '../provider/top_rated_movies_provider.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/movie_shimmer_widget.dart';

class MoviesScreen extends HookConsumerWidget {

  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trendingMovies = ref.watch(trendingMoviesProvider);
    final popularMovies = ref.watch(popularMoviesProvider);
    final topRatedMovies = ref.watch(topRatedMoviesProvider);
    final nowPlayingMovies = ref.watch(nowPlayingProvider);
    final upcomingMovies = ref.watch(upcomoingMovieProvider);
    final popularMoviesList = popularMovies.asData?.value.result ?? [];
    final topRatedMoviesList = topRatedMovies.asData?.value.result ?? [];
    final nowPlayingMoviesList = nowPlayingMovies.asData?.value.result ?? [];
    final upcomingMoviesList = upcomingMovies.asData?.value.result ?? [];
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final screenType = constraints.maxWidth.screenType;
          return trendingMovies.when(
            data: (data) {
              return ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(16),
                children: [
                  TrendingMoviesWidgets(
                    title: AppStrings.trending,
                    movieList: data.result,
                    screenType: screenType,
                  ),
                  if (screenType != ScreenType.mobile) SizedBox(height: 14),
                  TrendingMoviesWidgets(
                    title: AppStrings.nowPlaying,
                    movieList: nowPlayingMoviesList,
                    screenType: screenType,
                    viewAll: () {
                      context.pushNamed(
                        AppRoutes.viewAll,
                        queryParameters: {
                          'showType': 'movie',
                          'label': AppStrings.nowPlaying,
                          'showCategory': 'now_playing'
                        }
                      );
                    },
                  ),
                  if (screenType != ScreenType.mobile) SizedBox(height: 14),
                  TrendingMoviesWidgets(
                    title: AppStrings.popular,
                    movieList: popularMoviesList,
                    screenType: screenType,
                    viewAll: () {
                      context.pushNamed(
                        AppRoutes.viewAll,
                        queryParameters: {
                          'showType': 'movie',
                          'label': AppStrings.popular,
                          'showCategory': 'popular'
                        }
                      );
                    },
                  ),
                  if (screenType != ScreenType.mobile) SizedBox(height: 14),
                  TrendingMoviesWidgets(
                    title: AppStrings.topRated,
                    movieList: topRatedMoviesList,
                    screenType: screenType,
                    viewAll: () {
                      context.pushNamed(
                        AppRoutes.viewAll,
                        queryParameters: {
                          'showType': 'movie',
                          'label': AppStrings.topRated,
                          'showCategory': 'top_rated'
                        }
                      );
                    },
                  ),
                  if (screenType != ScreenType.mobile) SizedBox(height: 14),
                  TrendingMoviesWidgets(
                    title: AppStrings.upcoming,
                    movieList: upcomingMoviesList,
                    screenType: screenType,
                    viewAll: () {
                      context.pushNamed(
                        AppRoutes.viewAll,
                        queryParameters: {
                          'showType': 'movie',
                          'label': AppStrings.upcoming,
                          'showCategory': 'upcoming'
                        }
                      );
                    },
                  ),
                ],
              );
            },
            error: (message, _) => Center(child: Text('$message')), 
            loading: () => MovieShimmerWidget(
              screenType: screenType,
              maxWidth: constraints.maxWidth,
            )
          );
        }
      ),
    );
  }
}