import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_strings.dart';
import 'view_all_widget.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../../core/widgets/vote_percentage_widget.dart';
import '../../domain/entities/trending_movie_entity.dart';

class TrendingMoviesWidgets extends StatelessWidget {

  final String title;
  final List<TrendingMovie> movieList;
  final Function()? viewAll;

  const TrendingMoviesWidgets({
    this.title = '',
    this.movieList = const [],
    this.viewAll,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (movieList.isEmpty) return SizedBox.shrink();
    return LayoutBuilder(
      builder: (contex, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MovieText(
              title: title,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: MovieColors.white.withValues(alpha: 0.9)
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 301,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: viewAll != null
                ? movieList.length + 1
                : movieList.length,
                separatorBuilder: (_,_) => SizedBox(width: 15),
                itemBuilder: (_,index) {
                  final movie = index == movieList.length 
                  ? movieList[index - 1]
                  : movieList[index];
                  return InkWell(
                    borderRadius: BorderRadius.circular(12),
                    highlightColor: index != movieList.length
                    ? null
                    :Colors.transparent,
                    splashColor: index != movieList.length
                    ? null
                    :Colors.transparent,
                    onTap: () {
                      index == movieList.length
                      ? viewAll?.call()
                      : context.pushNamed(
                        AppRoutes.movieDetails,
                        queryParameters: {
                          'id': '${movie.id}',
                          'type': movie.mediaType
                        }
                      );
                    },
                    child: SizedBox(
                      width: getTrendingCardWidth(constraints.maxWidth, canCalculate: title == AppStrings.trending),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              index == movieList.length
                              ? ViewAllWidget()
                              : MovieImageWidget(
                                imagePath: backgroundImage(
                                  movie, 
                                  constraints.maxWidth, 
                                  canCalculate: title == AppStrings.trending
                                ),
                                // imagePath: movie.backdropPath.generateImageURL,
                                width: double.maxFinite,
                                height: 200
                              ),
                              if (index != movieList.length)
                                Positioned(
                                  bottom: 0,
                                  left: 12,
                                  child: VotePercentageWidget(
                                    votePercent: movie.voteAverage / 10,
                                  ),
                                ),
                            ],
                          ),
                          SizedBox(height: 24),
                          if (index != movieList.length)
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                spacing: 2,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MovieText(
                                    title: movie.title,
                                    maxLine: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: MovieColors.white.withValues(alpha: 0.9)
                                    ),
                                  ),
                                  MovieText(
                                    title: movie.releaseDate.formatDOB(hideYrs: true),
                                    maxLine: 1,
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: MovieColors.textSecondary
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                }
              ),
            ),
          ],
        );
      }
    );
  }

  String backgroundImage(TrendingMovie movie, double screenWidth, {bool canCalculate = false}) {
    if (!canCalculate) return movie.posterPath.generateImageURL;
    if (screenWidth < 600) {
      // Mobile: Strictly 125 as defined
      return movie.posterPath.generateImageURL; 
    } else if (screenWidth < 1100) {
      // Tablet / Laptop: Scale dynamically between mobile and desktop
      return movie.backdropPath.generateImageURL;
    } else {
      // Large Desktop: Cap max width
      return movie.backdropPath.generateImageURL; 
    }
  }

  double getTrendingCardWidth(double screenWidth, {bool canCalculate = false}) {
    if (!canCalculate) return 125.0;
    if (screenWidth < 600) {
      // Mobile: Strictly 125 as defined
      return 125.0; 
    } else if (screenWidth < 1100) {
      // Tablet / Laptop: Scale dynamically between mobile and desktop
      return (screenWidth - 48) / 2.5;
    } else {
      // Large Desktop: Cap max width
      return 380.0; 
    }
  }
}