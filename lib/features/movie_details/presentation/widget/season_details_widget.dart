import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_show/features/movie_details/presentation/provider/params/session_details_param.dart';
import 'package:my_show/features/movie_details/presentation/provider/season_details_provider.dart';
import 'package:my_show/features/movie_details/presentation/widget/movie_action_widget.dart';
import 'package:my_show/features/movie_details/presentation/widget/season_details_shimmer.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/widgets/movie_text.dart';

class SeasonDetailsWidget extends HookConsumerWidget {
  
  final String seasonId;
  final String seasonNumber;
  
  const new({
    required this.seasonId,
    required this.seasonNumber,
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).textTheme;
    final seasonDetails = ref.watch(seasonDetailsProvider);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final param = SeasonDetailsParam(id: seasonId, seasonNumber: seasonNumber);
        ref.read(seasonDetailsProvider.notifier).seasonDetails(param);
      });
      return null;
    }, []);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: MovieText(
                title: seasonNumber == '0'
                ? 'Specials'
                : 'Season - $seasonNumber',
                style: theme.bodyMedium?.copyWith(
                  color: MovieColors.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(-6, 0),
              child: CloseButton()
            ),
          ],
        ),
        seasonDetails.when(
          data: (data) {
            return Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 14),
                children: [
                  Row(
                    spacing:8,
                    children: [
                      MovieActionWidget(
                        label: 'Episode - ${(data.episodes?? []).length}', 
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        style: theme.labelMedium?.copyWith(
                          color: MovieColors.textSecondary
                        )
                      ),
                      if (!(data.airDate ?? '').isBlank) ...[
                        MovieActionWidget(
                          label: data.airDate!.formatDOB(hideYrs: true), 
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          style: theme.labelMedium?.copyWith(
                            color: MovieColors.textSecondary
                          )
                        ),
                      ],
                      if ((data.voteAverage ?? 0.0) > 0.0) ...[
                        MovieActionWidget(
                          label: data.voteAverage!.toStringAsFixed(1), 
                          icon: Icons.star,
                          iconColor: MovieColors.primaryColor,
                          iconSize: 16,
                          backgroundColor: MovieColors.primaryColor.withValues(alpha: 0.1),
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        ),
                      ]
                    ],
                  ),
                  if (!(data.overview ?? '').isBlank) ...[
                    SizedBox(height: 10),
                    MovieText(
                      title: data.overview ?? '',
                      style: theme.labelSmall?.copyWith(color: MovieColors.grey),
                    ),
                  ],
                  SizedBox(height: 16),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 10,
                    children: List.generate(
                      (data.episodes ?? []).length, 
                      (index) {
                        final episodeItem = (data.episodes ?? [])[index];
                        return InkWell(
                          onTap: () {
                            // showSeasonDetailsDialog(context, season: item.seasonNumber);
                          },
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            width: double.maxFinite,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: MovieColors.grey.withValues(alpha: 0.1),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 12,
                              children: [
                                MovieImageWidget(
                                  imagePath: (episodeItem.stillPath ?? '').isBlank
                                  ? ''
                                  : (episodeItem.stillPath ?? '').generateImageURL,
                                  width: 80,
                                  height: double.maxFinite,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 6.0,
                                      bottom: 10.0,
                                      right: 8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        MovieText(
                                          title: episodeItem.name ?? '',
                                          style: theme.bodyMedium?.copyWith(
                                            color: MovieColors.textPrimary.withValues(alpha: 0.8),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400
                                          ),
                                          maxLine: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(height: 4),
                                        if ((episodeItem.voteAverage ?? 0.0) >= 0.0 || !(episodeItem.airDate ?? '').isBlank)...[
                                          Row(
                                            children: [
                                              if ((episodeItem.voteAverage ?? 0.0) > 0.0) ...[
                                                Icon(Icons.star, color: MovieColors.primaryColor, size: 12), 
                                                MovieText(
                                                  title: ' ${episodeItem.voteAverage!.toStringAsFixed(1)}',
                                                  style: theme.labelSmall?.copyWith(
                                                    color: MovieColors.grey,
                                                    fontSize: 11
                                                  ),
                                                ),
                                                if (!(episodeItem.airDate ?? '').isBlank) ...[
                                                  MovieText(
                                                    title: ' • ',
                                                    style: theme.labelSmall?.copyWith(
                                                      color: MovieColors.grey.withValues(alpha: 0.6),
                                                      fontSize: 11
                                                    ),
                                                  ),
                                                ]
                                              ],
                                              if (!(episodeItem.airDate ?? '').isBlank) ...[
                                                MovieText(
                                                  title: episodeItem.airDate!.formatDOB(hideYrs: true),
                                                  style: theme.labelSmall?.copyWith(
                                                    color: MovieColors.grey,
                                                    fontSize: 11
                                                  ),
                                                ),
                                                if (!(episodeItem.runtime ?? -1).isNegative) ...[
                                                  MovieText(
                                                    title: ' • ',
                                                    style: theme.labelSmall?.copyWith(
                                                      color: MovieColors.grey.withValues(alpha: 0.6),
                                                      fontSize: 11
                                                    ),
                                                  ),
                                                ]
                                              ],
                                              if (!(episodeItem.runtime ?? -1).isNegative) ...[
                                                MovieText(
                                                  title: episodeItem.runtime!.formatRuntime,
                                                  style: theme.labelSmall?.copyWith(
                                                    color: MovieColors.grey,
                                                    fontSize: 11
                                                  ),
                                                ),
                                              ]
                                            ]
                                          ),
                                          const SizedBox(height: 4),
                                        ],
                                        if (episodeItem.episodeNumber != null) ...[
                                          MovieText(
                                            title: 'Episode • ${episodeItem.episodeNumber!.toString()}',
                                            style: theme.labelSmall?.copyWith(
                                              color: MovieColors.grey,
                                              fontSize: 11
                                            ),
                                          ),
                                        ],
                                        const Spacer(),
                                        Expanded(
                                          child: MovieText(
                                            title: (episodeItem.overview ?? '').isBlank
                                            ? '-'
                                            : episodeItem.overview ?? '',
                                            overflow: TextOverflow.ellipsis,
                                            maxLine: 1,
                                            style: theme.labelSmall?.copyWith(
                                              color: MovieColors.grey,
                                              fontSize: 11
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    )
                  )
                ],
              ),
            );
          }, 
          error: (_, _) => Center(child: Text('Error')), 
          loading: () => SeasonDetailsShimmer()
        ),
        SizedBox(height: 8)
      ],
    );
  }
}