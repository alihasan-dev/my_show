import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../features/tv/domain/entities/trending_tvshow_entity.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../../core/widgets/vote_percentage_widget.dart';
import '../../../movie/presentation/widgets/view_all_widget.dart';
class TvShowWidgets extends StatelessWidget {

  final String title;
  final List<TrendingShow> tvShowList;
  final Function()? viewAll;

  const TvShowWidgets({
    this.title = '',
    this.tvShowList = const [],
    this.viewAll,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (tvShowList.isEmpty) return SizedBox.shrink();
    return LayoutBuilder(
      builder: (context, constraints) {
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
              height: 285,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: viewAll != null
                ? tvShowList.length + 1
                : tvShowList.length,
                separatorBuilder: (_,_) => SizedBox(width: 15),
                itemBuilder: (_,index) {
                  final tvShow = index == tvShowList.length 
                  ? tvShowList[index - 1]
                  : tvShowList[index];
                  return InkWell(
                    borderRadius: BorderRadius.circular(12),
                    highlightColor: index != tvShowList.length
                    ? null
                    :Colors.transparent,
                    splashColor: index != tvShowList.length
                    ? null
                    :Colors.transparent,
                    onTap: () {
                      index == tvShowList.length
                      ? viewAll?.call()
                      : context.pushNamed(
                        AppRoutes.movieDetails,
                        queryParameters: {
                          'id': '${tvShow.id}',
                          'type': 'tv'
                        }
                      );
                    },
                    child: SizedBox(
                      width: getTrendingCardWidth(
                        constraints.maxWidth, 
                        canCalculate: title == AppStrings.trending
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              index == tvShowList.length
                              ? ViewAllWidget()
                              : MovieImageWidget(
                                  imagePath: backgroundImage(
                                    tvShow,
                                    constraints.maxWidth, 
                                    canCalculate: title == AppStrings.trending
                                  ),
                                  width: double.maxFinite,
                                  height: 200
                                ),
                              if (index != tvShowList.length && tvShow.voteAverage > 0.0)
                                Positioned(
                                  bottom: 5,
                                  right: 5,
                                  child: VotePercentageWidget(
                                    votePercent: tvShow.voteAverage / 10,
                                    yTransform: 0.0,
                                  ),
                                ),
                            ],
                          ),
                          SizedBox(height: 8),
                          if (index != tvShowList.length)
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                spacing: 2,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MovieText(
                                    title: tvShow.name,
                                    maxLine: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: MovieColors.white.withValues(alpha: 0.9)
                                    ),
                                  ),
                                  MovieText(
                                    title: tvShow.firstAirDate.formatDOB(hideYrs: true),
                                    maxLine: 1,
                                    overflow: TextOverflow.ellipsis,
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

  String backgroundImage(TrendingShow movie, double screenWidth, {bool canCalculate = false}) {
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