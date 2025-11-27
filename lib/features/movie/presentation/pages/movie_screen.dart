import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_strings.dart';
import '../provider/top_rated_movies_provider.dart';
import '../../../../core/routes/app_routes.dart';
import '../widgets/trending_movies_widgets.dart';
import '../provider/now_playing_provider.dart';
import '../provider/popular_movies_provider.dart';
import '../provider/trending_movies_provider.dart';
import '../provider/upcoming_movie_provider.dart';

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
      child: trendingMovies.when(
        data: (data) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              TrendingMoviesWidgets(
                title: AppStrings.trending,
                movieList: data.result,
              ),
              TrendingMoviesWidgets(
                title: AppStrings.nowPlaying,
                movieList: nowPlayingMoviesList,
                viewAll: () {
                  context.pushNamed(
                    AppRoutes.viewAll,
                    queryParameters: {
                      'showType': 'movie',
                      'showCategory': 'now_playing'
                    }
                  );
                },
              ),
              TrendingMoviesWidgets(
                title: AppStrings.popular,
                movieList: popularMoviesList,
                viewAll: () {
                  context.pushNamed(
                    AppRoutes.viewAll,
                    queryParameters: {
                      'showType': 'movie',
                      'showCategory': 'popular'
                    }
                  );
                },
              ),
              TrendingMoviesWidgets(
                title: AppStrings.topRated,
                movieList: topRatedMoviesList,
                viewAll: () {
                  context.pushNamed(
                    AppRoutes.viewAll,
                    queryParameters: {
                      'showType': 'movie',
                      'showCategory': 'top_rated'
                    }
                  );
                },
              ),
              TrendingMoviesWidgets(
                title: AppStrings.upcoming,
                movieList: upcomingMoviesList,
                viewAll: () {
                  context.pushNamed(
                    AppRoutes.viewAll,
                    queryParameters: {
                      'showType': 'movie',
                      'showCategory': 'upcoming'
                    }
                  );
                },
              ),
            ],
          );
        },
        error: (message, _) => Center(child: Text('$message')), 
        loading: () => const Center(child: CircularProgressIndicator())
      ),
    );
  }
}