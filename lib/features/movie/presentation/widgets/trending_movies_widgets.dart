import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
          height: 300,
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
                  width: 125,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          index == movieList.length
                          ? ViewAllWidget()
                          : MovieImageWidget(
                            imagePath: movie.posterPath.generateImageURL,
                            width: double.maxFinite,
                            height: 200
                          ),
                          if (index != movieList.length)
                            Positioned(
                              bottom: 0,
                              left: 12,
                              child: VotePercentageWidget(
                                votePercent: movie.voteAverage / 10,
                                title: (movie.voteAverage * 10).toStringAsFixed(0),
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
}