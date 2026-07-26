import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_show/core/constants/movie_colors.dart';
import '../../domain/entities/watch_provider_entity.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/movie_cast_banner.dart';

class WatchProviderBottomSheet extends HookConsumerWidget {
  
  final WatchProviderModal? watchProvider;
  
  const WatchProviderBottomSheet({
    super.key, 
    this.watchProvider
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (watchProvider?.watchRegion == null) return SizedBox.shrink();
    final theme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: MovieColors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)
        ) 
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: MovieText(
                  title: 'Watch Providers',
                  style: theme.titleMedium?.copyWith(
                    color: MovieColors.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-4, 0),
                child: CloseButton()
              ),
            ],
          ),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 18),
              children: [
                if ((watchProvider?.watchRegion?.flatrate ?? []).isNotEmpty) ...[
                  SizedBox(height: 10),
                  MovieText(
                    title: 'STREAM',
                    style: theme.bodyMedium?.copyWith(
                      fontSize: 13,
                      color: MovieColors.textPrimary
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 95,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: watchProvider!.watchRegion!.flatrate!.length,
                      itemBuilder: (context, index) {
                        final item = watchProvider!.watchRegion!.flatrate![index];
                        return MovieCastBanner(
                          height: 52,
                          width: 52,
                          radius: 12,
                          imagePath: item.logoPath!.generateImageURL,
                          subTitle: item.providerName ?? '',
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 1
                          ),
                          textAlign: TextAlign.center,
                          textStyle: theme.bodySmall?.copyWith(
                            fontSize: 10,
                            color: MovieColors.textSecondary
                          ),
                        );
                      },
                      separatorBuilder: (_, _) => SizedBox(width: 16),
                    ),
                  ),
                ],
                if ((watchProvider?.watchRegion?.free ?? []).isNotEmpty) ...[
                  SizedBox(height: 4),
                  MovieText(
                    title: 'FREE',
                    style: theme.bodyMedium?.copyWith(
                      fontSize: 13,
                      color: MovieColors.textPrimary
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 95,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: watchProvider!.watchRegion!.free!.length,
                      itemBuilder: (context, index) {
                        final item = watchProvider!.watchRegion!.free![index];
                        return MovieCastBanner(
                          height: 52,
                          width: 52,
                          radius: 12,
                          imagePath: item.logoPath!.generateImageURL,
                          subTitle: item.providerName ?? '',
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 1
                          ),
                          textAlign: TextAlign.center,
                          textStyle: theme.bodySmall?.copyWith(
                            fontSize: 10,
                            color: MovieColors.textSecondary
                          ),
                        );
                      },
                      separatorBuilder: (_, _) => SizedBox(width: 16),
                    ),
                  ),
                ],
                if ((watchProvider?.watchRegion?.rent ?? []).isNotEmpty) ...[
                  SizedBox(height: 4),
                  MovieText(
                    title: 'RENT',
                    style: theme.bodyMedium?.copyWith(
                      fontSize: 13,
                      color: MovieColors.textPrimary
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 95,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: watchProvider!.watchRegion!.rent!.length,
                      itemBuilder: (context, index) {
                        final item = watchProvider!.watchRegion!.rent![index];
                        return MovieCastBanner(
                          height: 52,
                          width: 52,
                          radius: 12,
                          imagePath: item.logoPath!.generateImageURL,
                          subTitle: item.providerName ?? '',
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 1
                          ),
                          textAlign: TextAlign.center,
                          textStyle: theme.bodySmall?.copyWith(
                            fontSize: 10,
                            color: MovieColors.textSecondary
                          ),
                        );
                      },
                      separatorBuilder: (_, _) => SizedBox(width: 16),
                    ),
                  )
                ],
                if ((watchProvider?.watchRegion?.buy ?? []).isNotEmpty) ...[
                  SizedBox(height: 4),
                  MovieText(
                    title: 'BUY',
                    style: theme.bodyMedium?.copyWith(
                      fontSize: 13,
                      color: MovieColors.textPrimary
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 95,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: watchProvider!.watchRegion!.buy!.length,
                      itemBuilder: (context, index) {
                        final item = watchProvider!.watchRegion!.buy![index];
                        return MovieCastBanner(
                          height: 52,
                          width: 52,
                          radius: 12,
                          imagePath: item.logoPath!.generateImageURL,
                          subTitle: item.providerName ?? '',
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 1
                          ),
                          textAlign: TextAlign.center,
                          textStyle: theme.bodySmall?.copyWith(
                            fontSize: 10,
                            color: MovieColors.textSecondary
                          ),
                        );
                      },
                      separatorBuilder: (_, _) => SizedBox(width: 16),
                    ),
                  )
                ],
                SizedBox(height: 20),
              ],
            ),
          ),     
        ],
      ),
    );
  }
}