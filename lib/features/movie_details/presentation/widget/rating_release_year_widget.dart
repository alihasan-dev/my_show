import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/entities/movie_details_entity.dart';
import '../../domain/entities/release_dates_entity.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/movie_text.dart';
class RatingReleaseYearWidget extends HookConsumerWidget {

  final MovieDetailEntity movieData;
  final List<ReleaseResults> certificateList; 
  
  const RatingReleaseYearWidget({
    required this.movieData,
    this.certificateList = const [],
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final runTime = (movieData.runtime ?? 0) <= 0 ? '' : (movieData.runtime ?? 0).formatRuntime;
    final releaseYear = (movieData.releaseDate ?? '').isBlank ? '' : movieData.releaseDate!.releaseYear;
    final certification = certificateList.isEmpty
    ? ''
    : (certificateList.first.releaseDates ?? []).isEmpty
      ? ''
      : certificateList.first.releaseDates!.firstWhere((item) => !(item.certification ?? '').isBlank, orElse: () => ReleaseDates()).certification ?? '';
    return Wrap(
      children: [
        if ((movieData.voteAverage ?? 0.0) > 0.0) ...[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: MovieColors.primaryColor, size: 14), 
              MovieText(
                title: ' ${movieData.voteAverage!.toStringAsFixed(1)}',
                style: textTheme.labelMedium?.copyWith(
                  color: MovieColors.grey
                ),
              ),
            ],
          ),
          MovieText(
            title: ' • ',
            style: textTheme.labelSmall?.copyWith(
              color: MovieColors.grey.withValues(alpha: 0.6)
            ),
          ),
        ],
        if (!releaseYear.isBlank) ...[
          MovieText(
            title: releaseYear,
            style: textTheme.labelMedium?.copyWith(
              color: MovieColors.grey
            ),
          ),
        ],
        if (!runTime.isBlank) ...[
          MovieText(
            title: ' • ',
            style: textTheme.labelSmall?.copyWith(
              color: MovieColors.grey.withValues(alpha: 0.6)
            ),
          ),
          MovieText(
            title: runTime,
            style: textTheme.labelMedium?.copyWith(
              color: MovieColors.grey
            ),
          ),
        ],
        if (!certification.isBlank) ...[
          MovieText(
            title: '  •  ',
            style: textTheme.labelSmall?.copyWith(
              color: MovieColors.grey.withValues(alpha: 0.6)
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 2.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: MovieColors.grey, width: 0.8)
            ),
            child: MovieText(
              title: certification,
              style: textTheme.labelMedium?.copyWith(
                color: MovieColors.grey
              ),
            ),
          ),
        ],
      ]
    );
  }
}