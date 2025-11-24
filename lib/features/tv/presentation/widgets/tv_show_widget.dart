import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
            ? tvShowList.length + 1
            : tvShowList.length,
            separatorBuilder: (_,_) => SizedBox(width: 15),
            itemBuilder: (_,index) {
              final tvShow = index == tvShowList.length 
              ? tvShowList[index - 1]
              : tvShowList[index];
              return InkWell(
                borderRadius: BorderRadius.circular(12),
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
                  width: 125,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          index == tvShowList.length
                          ? ViewAllWidget()
                          // ? ViewAllWidget()
                          : MovieImageWidget(
                            imagePath: tvShow.posterPath.generateImageURL,
                            width: double.maxFinite,
                            height: 200
                          ),
                          if (index != tvShowList.length)
                            Positioned(
                              bottom: 0,
                              left: 12,
                              child: VotePercentageWidget(
                                votePercent: tvShow.voteAverage / 10,
                                title: (tvShow.voteAverage * 10).toStringAsFixed(0),
                              ),
                            ),
                        ],
                      ),
                      SizedBox(height: 24),
                      if (index != tvShowList.length)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
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