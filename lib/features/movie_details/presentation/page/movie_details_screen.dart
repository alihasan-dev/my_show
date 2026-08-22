import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '/core/widgets/vote_percentage_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_show/core/utils/custom_snackbar.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../provider/watch_provider.dart';
import '../provider/movie_cast_provider.dart';
import '../provider/movie_video_provider.dart';
import '../provider/movie_awards_provider.dart';
import '../provider/movie_details_provider.dart';
import '../provider/movie_keyword_provider.dart';
import '../widget/watch_provider_bottom_sheet.dart';
import '../widget/movie_details_shimmer_widget.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/locale_provider.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/widgets/movie_cast_banner.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/custom_sliver_app_bar.dart';
import '../../../../core/widgets/custom_gradient_button.dart';
import '../../../../core/widgets/custom_keyword_chip_widget.dart';
import '../../../../features/movie_details/presentation/widget/additional_info_tile.dart';
import '../../../../features/movie_details/presentation/provider/movie_recommentation_provider.dart';

class MovieDetailsScreen extends HookConsumerWidget {
  
  final String id;
  final String type;

  const MovieDetailsScreen({
    required this.id,
    required this.type,
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.read(localeProvider);
    final formatter = NumberFormat.currency(locale: "en_US", symbol: "\$");
    final theme = Theme.of(context).textTheme;
    final movieVideo = ref.watch(movieVideoProvider((id: id, type: type)));
    final movieDetails = ref.watch(movieDetailsProvider((id: id, type: type)));
    final movieCast = ref.watch(movieCastProvider((id: id, type: type)));
    final movieRecommendation = ref.watch(movieRecommendationProvider((id: id, type: type)));
    final movieKeywords = ref.watch(movieKeywordProvider((id: id, type: type)));
    final movieTvWatchProvider = ref.watch(watchProvider);
    final recommendedMovieList = movieRecommendation.asData?.value.result ?? [];
    final movieCastList = movieCast.asData?.value.cast ?? [];
    final movieCrewList = movieCast.asData?.value.crew ?? [];
    final movieKeywordList = movieKeywords.asData?.value.keywords ?? [];
    final movieVideoList = movieVideo.asData?.value.results ?? [];
    final movieTvWatchData = movieTvWatchProvider.asData?.value;
    final awards = useState<String>('');

    useEffect(() {
      movieDetails.whenData((data) async {
        if (awards.value.isBlank && !(data.imdbId ?? '').isBlank) {
          try {
            final movieAwards = await ref.read(movieAwardProvider(data.imdbId!).future);
            awards.value = movieAwards.awards ?? '';
          } catch (_) {}
        }
      });
      return null;
    }, [movieDetails]);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final countryCode = locale.countryCode ?? 'US';
        ref.read(watchProvider.notifier).watchProvider(id: id, type: type, countryCode: countryCode);
      });
      return null;
    }, []);

    if (movieKeywordList.isNotEmpty) {
      movieKeywordList.sort((a, b) {
        final keyA = a.name ?? '';
        final keyB = b.name ?? '';
        if (keyA.isBlank && keyB.isBlank) return 0;
        if (keyA.isBlank) return 1;
        if (keyB.isBlank) return -1;
        return keyA.compareTo(keyB);
      });
    }

    if (recommendedMovieList.isNotEmpty) {
      recommendedMovieList.sort((a, b) {
        if (a.releaseDate.isBlank && b.releaseDate.isBlank) return 0;
        if (a.releaseDate.isBlank) return 1;
        if (b.releaseDate.isBlank) return -1;
        final first = DateTime.tryParse(a.releaseDate);
        final second = DateTime.tryParse(b.releaseDate);
        // Invalid dates also go to the end
        if (first == null && second == null) return 0;
        if (first == null) return 1;
        if (second == null) return -1;
        return second.compareTo(first);
      });
    }

    return Scaffold(
      body: SafeArea(
        top: false,
        child: movieDetails.when(
          data: (data) {
            final movieData = data;
            return CustomScrollView(
              slivers: [
                CustomSliverAppBar(
                  imagePath: (movieData.backdropPath ?? '').generateImageURL,
                  title: movieData.title ?? movieData.name ?? '',
                ),
                // Body Content
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MovieImageWidget(
                              imagePath: (movieData.posterPath ?? '').generateImageURL,
                              height: 150,
                              width: 106,
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    type == 'movie'
                                    ? movieData.title ?? ''
                                    : movieData.name ?? '',
                                    style: TextStyle(
                                      fontSize: 18, 
                                      fontWeight: FontWeight.bold,
                                      color: MovieColors.textPrimary
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  if ((movieData.genres ?? []).isNotEmpty)
                                    Wrap(
                                      children: List.generate(
                                        type == 'movie'
                                        ? movieData.genres!.length + 1
                                        : movieData.genres!.length,
                                        (index) {
                                          return index == movieData.genres!.length
                                          ? MovieText(
                                              title: ' • ${(movieData.runtime ?? 0).formatRuntime}',
                                              style: theme.labelMedium?.copyWith(
                                                color: MovieColors.grey
                                              ),
                                            )
                                          : MovieText(
                                            title: (movieData.genres![index].name ?? '') + 
                                            (index != movieData.genres!.length - 1 ? ', ' : ''),
                                            style: theme.labelMedium?.copyWith(
                                              color: MovieColors.grey
                                            ),
                                          );
                                        }
                                      )
                                    ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      if ((movieData.voteAverage ?? 0.0) > 0.0) ...[
                                        VotePercentageWidget(
                                          height: 40,
                                          width: 40,
                                          votePercent: movieData.voteAverage! / 10,
                                          yTransform: 0,
                                        ),
                                        const SizedBox(width: 12),
                                      ],
                                      IconButton(
                                        onPressed: () {
                                          CustomSnackBar.show(
                                            context, 
                                            message: AppStrings.comingSoon
                                          );
                                        },
                                        icon: const Icon(Icons.favorite_border),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          CustomSnackBar.show(
                                            context, 
                                            message: AppStrings.comingSoon
                                          );
                                        },
                                        icon: const Icon(Icons.bookmark_border),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          if (movieVideoList.isEmpty) {
                                            CustomSnackBar.show(
                                              context, 
                                              message: type == 'movie'
                                              ? AppStrings.noMovieVideosAvailable
                                              : AppStrings.noTvVideosAvailable
                                            );
                                            return;
                                          }
                                          context.pushNamed(
                                            AppRoutes.videoPlayer,
                                            extra: {
                                              'videos': movieVideoList,
                                              'initialIndex': 0,
                                            },
                                          );
                                        },
                                        icon: const Icon(Icons.play_circle),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        if (!(movieData.tagline ?? '').isBlank)
                          Column(
                            children: [
                              const SizedBox(height: 12),
                              Text(
                                movieData.tagline ?? '',
                                style: theme.labelMedium?.copyWith(
                                  color: MovieColors.grey,
                                  fontStyle: FontStyle.italic
                                )
                              ),
                            ],
                          ),
                        if (!(movieData.overview ?? '').isBlank) ...[
                          const SizedBox(height: 10),
                          MovieText(
                            title: AppStrings.overview,
                            style: theme.titleMedium?.copyWith(
                              color: MovieColors.textPrimary,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            movieData.overview ?? '',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                        if (movieCastList.isNotEmpty) ...[
                          const SizedBox(height: 24),
                          MovieText(
                            title: AppStrings.cast,
                            style: theme.titleMedium?.copyWith(
                              color: MovieColors.textPrimary,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 236,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: movieCastList.length,
                              separatorBuilder: (_,_) => const SizedBox(width: 12),
                              itemBuilder: (context, index) {
                                final cast = movieCastList[index];
                                return MovieCastBanner(
                                  imagePath: (cast.profilePath ?? '').generateImageURL,
                                  title: cast.name ?? '',
                                  subTitle: cast.character ?? '',
                                  onTap: () => context.pushNamed(
                                    AppRoutes.profile,
                                    queryParameters: {
                                      'userId': '${cast.id}'
                                    }
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                        if (movieCrewList.isNotEmpty) ...[
                          MovieText(
                            title: AppStrings.crew,
                            style: theme.titleMedium?.copyWith(
                              color: MovieColors.textPrimary,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 236,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: movieCrewList.length,
                              separatorBuilder: (_,_) => const SizedBox(width: 12),
                              itemBuilder: (context, index) {
                                final cast = movieCrewList[index];
                                return MovieCastBanner(
                                  onTap: () {
                                    if (cast.id == null) return;
                                    context.pushNamed(
                                      AppRoutes.profile,
                                      queryParameters: {'userId': '${cast.id}'}
                                    );
                                  },
                                  imagePath: (cast.profilePath ?? '').generateImageURL,
                                  title: cast.name ?? '',
                                  subTitle: cast.job ?? '',
                                );
                              },
                            ),
                          ),
                        ],
                        const SizedBox(height: 10),
                        MovieText(
                          title: AppStrings.additionalInfo,
                          style: theme.titleMedium?.copyWith(
                            color: MovieColors.textPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(height: 12),
                        AdditionalInfoTile(
                          title: AppStrings.status,
                          value: movieData.status ?? ''
                        ),
                        if (!(movieData.releaseDate ?? '').isBlank)
                          AdditionalInfoTile(
                            title: AppStrings.releaseDate,
                            value: movieData.releaseDate!.formatDOB(hideYrs: true)
                          ),
                        AdditionalInfoTile(
                          title: AppStrings.originalLanguage,
                          value: (movieData.originalLanguage ?? '').formatLanguage
                        ),
                        if (movieData.budget != null)
                          AdditionalInfoTile(
                            title: AppStrings.budget,
                            value: (movieData.budget ?? 0) == 0
                            ? '-'
                            : formatter.format(movieData.budget ?? 0)
                          ),
                        if (movieData.revenue != null)
                          AdditionalInfoTile(
                            title: AppStrings.revenue,
                            value: (movieData.revenue ?? 0) == 0
                            ? '-'
                            : formatter.format(movieData.revenue ?? 0)
                          ),
                        if (!(movieData.type ?? '').isBlank)
                          AdditionalInfoTile(
                            title: AppStrings.type,
                            value: movieData.type ?? ''
                          ),
                        if (movieData.numberOfSeasons != null)
                          AdditionalInfoTile(
                            title: AppStrings.seasons,
                            value: movieData.numberOfSeasons.toString()
                          ),
                        if (movieData.numberOfSeasons != null)
                          AdditionalInfoTile(
                            title: AppStrings.episode,
                            value: movieData.numberOfEpisodes.toString()
                          ),
                        if ((movieData.networks ?? []).isNotEmpty)
                          AdditionalInfoTile(
                            title: AppStrings.networks,
                            widget: SizedBox(
                              height: 38,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: (movieData.networks ?? []).length,
                                separatorBuilder: (_, _) => const SizedBox(width: 10),
                                itemBuilder: (_, index) {
                                  final network = (movieData.networks ?? [])[index];
                                  return MovieImageWidget(
                                    tooltipMessage: network.name ?? '',
                                    imagePath: (network.logoPath ?? '').generateImageURL,
                                    radius: 0,
                                    fit: BoxFit.contain,
                                  );
                                },
                              ),
                            )
                          ),
                        if ((movieData.productionCompanies ?? []).isNotEmpty)
                          AdditionalInfoTile(
                            title: AppStrings.productions,
                            widget: SizedBox(
                              height: 38,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: (movieData.productionCompanies ?? []).length,
                                separatorBuilder: (_, _) => const SizedBox(width: 10),
                                itemBuilder: (_, index) {
                                  final network = (movieData.productionCompanies ?? [])[index];
                                  if ((network.logoPath ?? '').isBlank) return SizedBox.shrink();
                                  return MovieImageWidget(
                                    tooltipMessage: network.name ?? '',
                                    imagePath: (network.logoPath ?? '').generateImageURL,
                                    radius: 0,
                                    fit: BoxFit.contain,
                                  );
                                },
                              ),
                            )
                          ),
                        if (!awards.value.isBlank) ...[
                          AdditionalInfoTile(
                            title: 'Awards',
                            value: awards.value.replaceNA
                          ),
                          SizedBox(height: 5)
                        ],
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            spacing: 10,
                            children: List.generate(
                              movieTvWatchData?.watchRegion == null
                              ? 1
                              : 2, 
                              (watchIndex) {
                                return Expanded(
                                  child: CustomGradientButton(
                                    label: watchIndex == 0
                                    ? 'Read All Reviews'
                                    : 'Watch Providers',
                                    padding: EdgeInsetsGeometry.symmetric(vertical: 14),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadiusGeometry.circular(8),
                                    ),
                                    textAlign: TextAlign.center,
                                    textStyle: theme.labelLarge?.copyWith(
                                      color: MovieColors.white.withValues(alpha: 0.8)
                                    ),
                                    radius: 8,
                                    onTap: () {
                                      switch (watchIndex) {
                                        case 0:
                                          context.pushNamed(
                                            AppRoutes.review,
                                            queryParameters: {
                                              'id': id,
                                              'showType': type,
                                              'title': type == 'movie' ? movieData.title : movieData.name
                                            }
                                          );
                                          break;
                                        case 1: 
                                          if (kIsWeb) {
                                            showDialog(
                                              context: context,
                                              barrierColor: MovieColors.transparent,
                                              builder: (_) {
                                                return AlertDialog(
                                                  contentPadding: EdgeInsets.zero,
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                  content: SizedBox(
                                                    width: 400,
                                                    height: 400,
                                                    child: WatchProviderBottomSheet(
                                                      watchProvider: movieTvWatchData,
                                                    ),
                                                  ),
                                                );
                                              }
                                            );
                                          } else {
                                            showModalBottomSheet(
                                              context: context, 
                                              isScrollControlled: true,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20)
                                                )
                                              ),
                                              builder: (_) => WatchProviderBottomSheet(
                                                watchProvider: movieTvWatchData,
                                              )
                                            );
                                          }
                                        default:
                                      }
                                    }
                                  ),
                                );
                              }
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        MovieText(
                          title: AppStrings.keywords,
                          style: theme.titleMedium?.copyWith(
                            color: MovieColors.textPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(height: 10),
                        movieKeywordList.isNotEmpty
                        ? Wrap(
                            runSpacing: 6,
                            spacing: 6,
                            children: List.generate(
                              movieKeywordList.length,
                              (index) {
                                final keyword = movieKeywordList[index];
                                return CustomKeywordChipWidget(
                                  onTap: () => context.pushNamed(
                                    AppRoutes.searchMovieByKeywordScreen,
                                    queryParameters: {
                                      'id': '${keyword.id}',
                                      'name': keyword.name ?? '',
                                      'type': type
                                    }
                                  ),
                                  title: keyword.name ?? ''
                                );
                              }
                            )
                          )
                        : MovieText(title: AppStrings.noKeywordsFound),
                        ////recommendations
                        const SizedBox(height: 20),
                        MovieText(
                          title: AppStrings.recommendations,
                          style: theme.titleMedium?.copyWith(
                            color: MovieColors.textPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(height: 10),
                        recommendedMovieList.isNotEmpty
                        ? SizedBox(
                          height: 162,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: recommendedMovieList.length,
                            separatorBuilder: (_,_) => const SizedBox(width: 12),
                            itemBuilder: (context, index) {
                              final cast = recommendedMovieList[index];
                              return MovieCastBanner(
                                width: 200,
                                height: 112,
                                onTap: () => context.pushNamed(
                                  AppRoutes.movieDetails,
                                  queryParameters: {
                                    'id': cast.id.toString(),
                                    'type': type
                                  }
                                ),
                                imagePath: cast.backdropPath.generateImageURL,
                                title: cast.title,
                              );
                            },
                          ),
                        )
                        : MovieText(title: AppStrings.noRecommendedMoviesFound),
                        const SizedBox(height: 10),
                        MovieText(
                          title: AppStrings.videos,
                          style: theme.titleMedium?.copyWith(
                            color: MovieColors.textPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(height: 10),
                        movieVideoList.isNotEmpty
                        ? SizedBox(
                          height: 180,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: movieVideoList.length,
                            separatorBuilder: (_, _) => const SizedBox(width: 12),
                            itemBuilder: (_, index) {
                              final video = movieVideoList[index];
                              final thumbnailUrl = YoutubePlayer.getThumbnail(videoId: video.key ?? '');
                              return GestureDetector(
                                onTap: () => context.pushNamed(
                                  AppRoutes.videoPlayer,
                                  extra: {
                                    'videos': movieVideoList,
                                    'initialIndex': index,
                                  },
                                ),
                                child: SizedBox(
                                  width: 250,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            MovieImageWidget(
                                              imagePath: thumbnailUrl,
                                              height: 140,
                                              width: 250,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: MovieColors.black.withValues(alpha: 0.5),
                                                shape: BoxShape.circle,
                                              ),
                                              padding: const EdgeInsets.all(8),
                                              child: const Icon(
                                                Icons.play_arrow_rounded,
                                                color: MovieColors.white,
                                                size: 32,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      MovieText(
                                        title: video.name ?? '',
                                        maxLine: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: MovieColors.textPrimary,
                                          fontSize: 13,
                                        )
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                        : MovieText(title: AppStrings.noVideosFound),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
          error: (_, _) => Center(child: Text(AppStrings.noDataAvailable)), 
          loading: () => MovieDetailsShimmer()
        ),
      ),
    );
  }
}
