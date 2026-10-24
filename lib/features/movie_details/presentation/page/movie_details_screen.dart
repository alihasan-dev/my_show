import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_show/core/utils/app_enums.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../provider/movie_favourite_provider.dart';
import '../provider/movie_watchlist_provider.dart';
import '../widget/genres_widget.dart';
import '../provider/watch_provider.dart';
import '../provider/movie_cast_provider.dart';
import '../provider/movie_video_provider.dart';
import '../provider/movie_awards_provider.dart';
import '../provider/release_dates_provider.dart';
import '../provider/movie_details_provider.dart';
import '../provider/movie_keyword_provider.dart';
import '../widget/rating_release_year_widget.dart';
import '../widget/watch_provider_bottom_sheet.dart';
import '../widget/movie_details_shimmer_widget.dart';
import '../../domain/entities/video_entity.dart';
import '../../domain/entities/movie_details_entity.dart';
import '../../domain/entities/watch_provider_entity.dart';
import '../../domain/entities/movie_watchlist_entity.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../../core/utils/custom_snackbar.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/locale_provider.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/widgets/movie_cast_banner.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/custom_sliver_app_bar.dart';
import '../../../../core/widgets/custom_gradient_button.dart';
import '../../../../core/widgets/custom_keyword_chip_widget.dart';
import '../../../../features/movie_details/domain/entities/release_dates_entity.dart';
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
    final formatter = NumberFormat.currency(locale: "en_US", symbol: "\$", decimalDigits: 0);
    final theme = Theme.of(context).textTheme;
    final movieVideo = ref.watch(movieVideoProvider((id: id, type: type)));
    final movieDetails = ref.watch(movieDetailsProvider((id: id, type: type)));
    final movieCast = ref.watch(movieCastProvider((id: id, type: type)));
    final movieRecommendation = ref.watch(movieRecommendationProvider((id: id, type: type)));
    final movieKeywords = ref.watch(movieKeywordProvider((id: id, type: type)));
    final movieTvWatchProvider = ref.watch(watchProvider);
    final releaseDateProvider = ref.watch(releaseDatesProvider);
    final recommendedMovieList = movieRecommendation.asData?.value.result ?? [];
    final movieCastList = movieCast.asData?.value.cast ?? [];
    final movieCrewList = movieCast.asData?.value.crew ?? [];
    final movieKeywordList = movieKeywords.asData?.value.keywords ?? [];
    final movieVideoList = movieVideo.asData?.value.results ?? [];
    final movieTvWatchData = movieTvWatchProvider.asData?.value;
    final certificateList = releaseDateProvider.asData?.value?.results ?? [];
    final awards = useState<String>('');
    String watchTrailerYouTubeId = movieVideoList.firstWhere((item) => !(item.key ?? '').isBlank, orElse: () => Results()).key ?? '';
    final movieWatchlistState = ref.watch(movieWatchlistProvider);
    final hasWatchlistMarked = movieWatchlistState.value != null;
    final movieFavouriteState = ref.watch(movieFavouriteProvider);
    final hasFavouriteMarked = movieFavouriteState.value != null;


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
        ref.read(releaseDatesProvider.notifier).releaseDates(id: id, countryCode: countryCode);
        ref.read(movieWatchlistProvider.notifier).getWatchlist(id);
        ref.read(movieFavouriteProvider.notifier).getFavourite(id);
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
        child: LayoutBuilder(
          builder: (context, constraints) {
            final screenType = constraints.maxWidth.screenType;
            final mobileView = screenType == ScreenType.mobile;
            return movieDetails.when(
              data: (data) {
                final movieData = data;
                final releaseDate = (movieData.releaseDate ?? '').isBlank ? '' : movieData.releaseDate!.formatDOB(hideYrs: true);
                return CustomScrollView(
                  slivers: [
                    if (mobileView) ...[
                      CustomSliverAppBar(
                        imagePath: (movieData.backdropPath ?? '').generateImageURL,
                        title: movieData.title ?? movieData.name ?? '',
                      ),
                    ] else ...[
                      SliverToBoxAdapter(
                        child: MovieDetailsHero(
                          movieData: movieData,
                          id: id,
                          type: type,
                          certificateList: certificateList,
                          movieTvWatchData: movieTvWatchData,
                          watchTrailerYouTubeId: watchTrailerYouTubeId,
                          hasWatchlistMarked: hasWatchlistMarked,
                          hasFavouriteMarked: hasFavouriteMarked,
                        ),
                      ),
                    ],
                    // Body Content
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (mobileView) ...[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MovieImageWidget(
                                    imagePath: (movieData.posterPath ?? '').generateImageURL,
                                    height: 150,
                                    width: 106,
                                    radius: 6,
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
                                        GenresWidget(
                                          movieData: movieData,
                                        ),
                                        const SizedBox(height: 6),
                                        RatingReleaseYearWidget(
                                          certificateList: certificateList,
                                          movieData: movieData,
                                        ),
                                        if (!watchTrailerYouTubeId.isBlank) ...[
                                          const SizedBox(height: 14),
                                          CustomGradientButton(
                                            onTap: () {
                                              final youTubeURL = watchTrailerYouTubeId.generateYouTubeURL;
                                              if (youTubeURL.isBlank) {
                                                CustomSnackBar.show(
                                                  context, 
                                                  message: type == 'movie'
                                                  ? AppStrings.noMovieVideosAvailable
                                                  : AppStrings.noTvVideosAvailable
                                                );
                                                return;
                                              }
                                              launchUrl(Uri.parse(youTubeURL));
                                            },
                                            applyGradient: false,
                                            color: MovieColors.primaryColor,
                                            widget: Row(
                                              spacing: 2,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(Icons.play_arrow_rounded, size: 18, color: MovieColors.black),
                                                MovieText(
                                                  title: 'Watch Trailer',
                                                  style: theme.titleSmall?.copyWith(
                                                    color: MovieColors.black,
                                                    fontSize: 12
                                                  ),
                                                )
                                              ],
                                            ),
                                            padding: EdgeInsetsGeometry.only(
                                              top: 6,
                                              bottom: 6,
                                              left: 8,
                                              right: 14
                                            ),
                                          ),
                                        ],
                                        // Row(
                                        //   children: [
                                        //     // if ((movieData.voteAverage ?? 0.0) > 0.0) ...[
                                        //     //   VotePercentageWidget(
                                        //     //     height: 40,
                                        //     //     width: 40,
                                        //     //     votePercent: movieData.voteAverage! / 10,
                                        //     //     yTransform: 0,
                                        //     //   ),
                                        //     //   const SizedBox(width: 12),
                                        //     // ],
                                        //     IconButton(
                                        //       onPressed: () {
                                        //         CustomSnackBar.show(
                                        //           context, 
                                        //           message: AppStrings.comingSoon
                                        //         );
                                        //       },
                                        //       icon: const Icon(Icons.favorite_border),
                                        //     ),
                                        //     IconButton(
                                        //       onPressed: () {
                                        //         CustomSnackBar.show(
                                        //           context, 
                                        //           message: AppStrings.comingSoon
                                        //         );
                                        //       },
                                        //       icon: const Icon(Icons.bookmark_border),
                                        //     ),
                                        //     IconButton(
                                        //       onPressed: () {
                                        //         String youTubeURL = '';
                                        //         if (movieVideoList.isNotEmpty) {
                                        //           youTubeURL = movieVideoList.firstWhere((item) => !(item.key ?? '').isBlank, orElse: () => Results()).key ?? '';
                                        //         }
                                        //         youTubeURL = youTubeURL.generateYouTubeURL;
                                        //         // having some issue in youtube video player
                                        //         // context.pushNamed(
                                        //         //   AppRoutes.videoPlayer,
                                        //         //   extra: {
                                        //         //     'videos': movieVideoList,
                                        //         //     'initialIndex': 0,
                                        //         //   },
                                        //         // );
                                        //         if (youTubeURL.isBlank) {
                                        //           CustomSnackBar.show(
                                        //             context, 
                                        //             message: type == 'movie'
                                        //             ? AppStrings.noMovieVideosAvailable
                                        //             : AppStrings.noTvVideosAvailable
                                        //           );
                                        //           return;
                                        //         }
                                        //         launchUrl(Uri.parse(youTubeURL));
                                        //       },
                                        //       icon: const Icon(Icons.play_circle),
                                        //     ),
                                        //   ],
                                        // ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                            if (!(movieData.tagline ?? '').isBlank && mobileView)
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
                            if (!(movieData.overview ?? '').isBlank && mobileView) ...[
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
                              const SizedBox(height: 24),
                            ],
                            if (movieCastList.isNotEmpty) ...[
                              MovieText(
                                title: AppStrings.cast,
                                style: theme.titleMedium?.copyWith(
                                  color: MovieColors.textPrimary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                height: 236,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: movieCastList.length,
                                  separatorBuilder: (_,_) => SizedBox(
                                    width: screenType == ScreenType.mobile
                                    ? 4
                                    : 12
                                  ),
                                  itemBuilder: (context, index) {
                                    final cast = movieCastList[index];
                                    return MovieCastBanner(
                                      imagePath: (cast.profilePath ?? '').generateImageURL,
                                      title: cast.name ?? '',
                                      subTitle: cast.character ?? '',
                                      radius: 6,
                                      onTap: () => context.pushNamed(
                                        AppRoutes.profile,
                                        queryParameters: {'userId': '${cast.id}'}
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
                                  separatorBuilder: (_,_) => SizedBox(
                                    width: screenType == ScreenType.mobile
                                    ? 4
                                    : 12
                                  ),
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
                                      radius: 6,
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
                            if (!releaseDate.isBlank)
                              AdditionalInfoTile(
                                title: AppStrings.releaseDate,
                                value: releaseDate
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
                                title: AppStrings.awards,
                                value: awards.value.replaceNA
                              ),
                              SizedBox(height: 5)
                            ],
                            if (mobileView) ...[
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 6),
                                child: Row(
                                  spacing:screenType == ScreenType.mobile
                                  ? 6
                                  : 12,
                                  children: List.generate(
                                    movieTvWatchData?.watchRegion == null
                                    ? 1
                                    : 2, 
                                    (watchIndex) {
                                      return Expanded(
                                        child: CustomGradientButton(
                                          label: watchIndex == 0
                                          ? AppStrings.readAllReviews
                                          : AppStrings.watchProvider,
                                          padding: EdgeInsetsGeometry.symmetric(vertical: 14),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusGeometry.circular(6),
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
                                                if (kIsWeb || kIsWasm) {
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
                            ],
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
                                ),
                              )
                            : MovieText(title: AppStrings.noKeywordsFound),
                            ////recommendations
                            SizedBox(height: mobileView ? 20 : 30),
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
                                separatorBuilder: (_,_) => SizedBox(
                                  width: screenType == ScreenType.mobile
                                  ? 4
                                  : 12
                                ),
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
                                    radius: 6,
                                  );
                                },
                              ),
                            )
                            : MovieText(title: AppStrings.noRecommendedMoviesFound),
                            SizedBox(height: mobileView ? 10 : 20),
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
                                separatorBuilder: (_, _) => SizedBox(
                                  width: screenType == ScreenType.mobile
                                  ? 4
                                  : 12
                                ),
                                itemBuilder: (_, index) {
                                  final video = movieVideoList[index];
                                  final thumbnailUrl = (video.key ?? '').generateYouTubeThumbnail;
                                  final youTubeURL = (video.key ?? '').generateYouTubeURL;
                                  return GestureDetector(
                                    // having some issue in youtube video player
                                    // onTap: () => context.pushNamed(
                                    //   AppRoutes.videoPlayer,
                                    //   extra: {
                                    //     'videos': movieVideoList,
                                    //     'initialIndex': index,
                                    //   },
                                    // ),
                                    onTap: () {
                                      if (youTubeURL.isBlank) {
                                        CustomSnackBar.show(
                                          context, 
                                          message: 'Video not avaiable'
                                        );
                                        return;
                                      }
                                      launchUrl(Uri.parse(youTubeURL));
                                    },
                                    child: SizedBox(
                                      width: 250,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(6),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                MovieImageWidget(
                                                  imagePath: thumbnailUrl,
                                                  height: 140,
                                                  width: 250,
                                                  radius: 6,
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
                                            ),
                                          ),
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
                // return LayoutBuilder(
                //   builder: (context, constraints) {
                //     final screenType = constraints.maxWidth.screenType;
                //     final mobileView = screenType == ScreenType.mobile || screenType == ScreenType.tablet;
                //     return CustomScrollView(
                //       slivers: [
                //         if (mobileView) ...[
                //           CustomSliverAppBar(
                //             imagePath: (movieData.backdropPath ?? '').generateImageURL,
                //             title: movieData.title ?? movieData.name ?? '',
                //           ),
                //         ] else ...[
                //           SliverToBoxAdapter(
                //             child: MovieDetailsHero(
                //               movieData: movieData,
                //               id: id,
                //               type: type,
                //               certificateList: certificateList,
                //               movieTvWatchData: movieTvWatchData,
                //               watchTrailerYouTubeId: watchTrailerYouTubeId,
                //               hasWatchlistMarked: hasWatchlistMarked,
                //               hasFavouriteMarked: hasFavouriteMarked,
                //             ),
                //           ),
                //         ],
                //         // Body Content
                //         SliverToBoxAdapter(
                //           child: Padding(
                //             padding: const EdgeInsets.all(16),
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 if (mobileView) ...[
                //                   Row(
                //                     crossAxisAlignment: CrossAxisAlignment.start,
                //                     children: [
                //                       MovieImageWidget(
                //                         imagePath: (movieData.posterPath ?? '').generateImageURL,
                //                         height: 150,
                //                         width: 106,
                //                         radius: 6,
                //                       ),
                //                       const SizedBox(width: 16),
                //                       Expanded(
                //                         child: Column(
                //                           crossAxisAlignment: CrossAxisAlignment.start,
                //                           children: [
                //                             Text(
                //                               type == 'movie'
                //                               ? movieData.title ?? ''
                //                               : movieData.name ?? '',
                //                               style: TextStyle(
                //                                 fontSize: 18, 
                //                                 fontWeight: FontWeight.bold,
                //                                 color: MovieColors.textPrimary
                //                               ),
                //                             ),
                //                             const SizedBox(height: 8),
                //                             GenresWidget(
                //                               movieData: movieData,
                //                             ),
                //                             const SizedBox(height: 6),
                //                             RatingReleaseYearWidget(
                //                               certificateList: certificateList,
                //                               movieData: movieData,
                //                             ),
                //                             if (!watchTrailerYouTubeId.isBlank) ...[
                //                               const SizedBox(height: 14),
                //                               CustomGradientButton(
                //                                 onTap: () {
                //                                   final youTubeURL = watchTrailerYouTubeId.generateYouTubeURL;
                //                                   if (youTubeURL.isBlank) {
                //                                     CustomSnackBar.show(
                //                                       context, 
                //                                       message: type == 'movie'
                //                                       ? AppStrings.noMovieVideosAvailable
                //                                       : AppStrings.noTvVideosAvailable
                //                                     );
                //                                     return;
                //                                   }
                //                                   launchUrl(Uri.parse(youTubeURL));
                //                                 },
                //                                 applyGradient: false,
                //                                 color: MovieColors.primaryColor,
                //                                 widget: Row(
                //                                   spacing: 2,
                //                                   mainAxisSize: MainAxisSize.min,
                //                                   children: [
                //                                     Icon(Icons.play_arrow_rounded, size: 18, color: MovieColors.black),
                //                                     MovieText(
                //                                       title: 'Watch Trailer',
                //                                       style: theme.titleSmall?.copyWith(
                //                                         color: MovieColors.black,
                //                                         fontSize: 12
                //                                       ),
                //                                     )
                //                                   ],
                //                                 ),
                //                                 padding: EdgeInsetsGeometry.only(
                //                                   top: 6,
                //                                   bottom: 6,
                //                                   left: 8,
                //                                   right: 14
                //                                 ),
                //                               ),
                //                             ],
                //                             // Row(
                //                             //   children: [
                //                             //     // if ((movieData.voteAverage ?? 0.0) > 0.0) ...[
                //                             //     //   VotePercentageWidget(
                //                             //     //     height: 40,
                //                             //     //     width: 40,
                //                             //     //     votePercent: movieData.voteAverage! / 10,
                //                             //     //     yTransform: 0,
                //                             //     //   ),
                //                             //     //   const SizedBox(width: 12),
                //                             //     // ],
                //                             //     IconButton(
                //                             //       onPressed: () {
                //                             //         CustomSnackBar.show(
                //                             //           context, 
                //                             //           message: AppStrings.comingSoon
                //                             //         );
                //                             //       },
                //                             //       icon: const Icon(Icons.favorite_border),
                //                             //     ),
                //                             //     IconButton(
                //                             //       onPressed: () {
                //                             //         CustomSnackBar.show(
                //                             //           context, 
                //                             //           message: AppStrings.comingSoon
                //                             //         );
                //                             //       },
                //                             //       icon: const Icon(Icons.bookmark_border),
                //                             //     ),
                //                             //     IconButton(
                //                             //       onPressed: () {
                //                             //         String youTubeURL = '';
                //                             //         if (movieVideoList.isNotEmpty) {
                //                             //           youTubeURL = movieVideoList.firstWhere((item) => !(item.key ?? '').isBlank, orElse: () => Results()).key ?? '';
                //                             //         }
                //                             //         youTubeURL = youTubeURL.generateYouTubeURL;
                //                             //         // having some issue in youtube video player
                //                             //         // context.pushNamed(
                //                             //         //   AppRoutes.videoPlayer,
                //                             //         //   extra: {
                //                             //         //     'videos': movieVideoList,
                //                             //         //     'initialIndex': 0,
                //                             //         //   },
                //                             //         // );
                //                             //         if (youTubeURL.isBlank) {
                //                             //           CustomSnackBar.show(
                //                             //             context, 
                //                             //             message: type == 'movie'
                //                             //             ? AppStrings.noMovieVideosAvailable
                //                             //             : AppStrings.noTvVideosAvailable
                //                             //           );
                //                             //           return;
                //                             //         }
                //                             //         launchUrl(Uri.parse(youTubeURL));
                //                             //       },
                //                             //       icon: const Icon(Icons.play_circle),
                //                             //     ),
                //                             //   ],
                //                             // ),
                //                           ],
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                 ],
                //                 if (!(movieData.tagline ?? '').isBlank && mobileView)
                //                   Column(
                //                     children: [
                //                       const SizedBox(height: 12),
                //                       Text(
                //                         movieData.tagline ?? '',
                //                         style: theme.labelMedium?.copyWith(
                //                           color: MovieColors.grey,
                //                           fontStyle: FontStyle.italic
                //                         )
                //                       ),
                //                     ],
                //                   ),
                //                 if (!(movieData.overview ?? '').isBlank && mobileView) ...[
                //                   const SizedBox(height: 10),
                //                   MovieText(
                //                     title: AppStrings.overview,
                //                     style: theme.titleMedium?.copyWith(
                //                       color: MovieColors.textPrimary,
                //                       fontSize: 18,
                //                       fontWeight: FontWeight.w600
                //                     ),
                //                   ),
                //                   const SizedBox(height: 8),
                //                   Text(
                //                     movieData.overview ?? '',
                //                     style: TextStyle(color: Colors.grey),
                //                   ),
                //                   const SizedBox(height: 24),
                //                 ],
                //                 if (movieCastList.isNotEmpty) ...[
                //                   MovieText(
                //                     title: AppStrings.cast,
                //                     style: theme.titleMedium?.copyWith(
                //                       color: MovieColors.textPrimary,
                //                       fontSize: 18,
                //                       fontWeight: FontWeight.w600
                //                     ),
                //                   ),
                //                   const SizedBox(height: 8),
                //                   SizedBox(
                //                     height: 236,
                //                     child: ListView.separated(
                //                       scrollDirection: Axis.horizontal,
                //                       itemCount: movieCastList.length,
                //                       separatorBuilder: (_,_) => SizedBox(
                //                         width: screenType == ScreenType.mobile
                //                         ? 4
                //                         : 12
                //                       ),
                //                       itemBuilder: (context, index) {
                //                         final cast = movieCastList[index];
                //                         return MovieCastBanner(
                //                           imagePath: (cast.profilePath ?? '').generateImageURL,
                //                           title: cast.name ?? '',
                //                           subTitle: cast.character ?? '',
                //                           radius: 6,
                //                           onTap: () => context.pushNamed(
                //                             AppRoutes.profile,
                //                             queryParameters: {'userId': '${cast.id}'}
                //                           ),
                //                         );
                //                       },
                //                     ),
                //                   ),
                //                 ],
                //                 if (movieCrewList.isNotEmpty) ...[
                //                   MovieText(
                //                     title: AppStrings.crew,
                //                     style: theme.titleMedium?.copyWith(
                //                       color: MovieColors.textPrimary,
                //                       fontSize: 18,
                //                       fontWeight: FontWeight.w600
                //                     ),
                //                   ),
                //                   const SizedBox(height: 10),
                //                   SizedBox(
                //                     height: 236,
                //                     child: ListView.separated(
                //                       scrollDirection: Axis.horizontal,
                //                       itemCount: movieCrewList.length,
                //                       separatorBuilder: (_,_) => SizedBox(
                //                         width: screenType == ScreenType.mobile
                //                         ? 4
                //                         : 12
                //                       ),
                //                       itemBuilder: (context, index) {
                //                         final cast = movieCrewList[index];
                //                         return MovieCastBanner(
                //                           onTap: () {
                //                             if (cast.id == null) return;
                //                             context.pushNamed(
                //                               AppRoutes.profile,
                //                               queryParameters: {'userId': '${cast.id}'}
                //                             );
                //                           },
                //                           imagePath: (cast.profilePath ?? '').generateImageURL,
                //                           title: cast.name ?? '',
                //                           subTitle: cast.job ?? '',
                //                           radius: 6,
                //                         );
                //                       },
                //                     ),
                //                   ),
                //                 ],
                //                 const SizedBox(height: 10),
                //                 MovieText(
                //                   title: AppStrings.additionalInfo,
                //                   style: theme.titleMedium?.copyWith(
                //                     color: MovieColors.textPrimary,
                //                     fontSize: 18,
                //                     fontWeight: FontWeight.w600
                //                   ),
                //                 ),
                //                 const SizedBox(height: 12),
                //                 AdditionalInfoTile(
                //                   title: AppStrings.status,
                //                   value: movieData.status ?? ''
                //                 ),
                //                 if (!releaseDate.isBlank)
                //                   AdditionalInfoTile(
                //                     title: AppStrings.releaseDate,
                //                     value: releaseDate
                //                   ),
                //                 AdditionalInfoTile(
                //                   title: AppStrings.originalLanguage,
                //                   value: (movieData.originalLanguage ?? '').formatLanguage
                //                 ),
                //                 if (movieData.budget != null)
                //                   AdditionalInfoTile(
                //                     title: AppStrings.budget,
                //                     value: (movieData.budget ?? 0) == 0
                //                     ? '-'
                //                     : formatter.format(movieData.budget ?? 0)
                //                   ),
                //                 if (movieData.revenue != null)
                //                   AdditionalInfoTile(
                //                     title: AppStrings.revenue,
                //                     value: (movieData.revenue ?? 0) == 0
                //                     ? '-'
                //                     : formatter.format(movieData.revenue ?? 0)
                //                   ),
                //                 if (!(movieData.type ?? '').isBlank)
                //                   AdditionalInfoTile(
                //                     title: AppStrings.type,
                //                     value: movieData.type ?? ''
                //                   ),
                //                 if (movieData.numberOfSeasons != null)
                //                   AdditionalInfoTile(
                //                     title: AppStrings.seasons,
                //                     value: movieData.numberOfSeasons.toString()
                //                   ),
                //                 if (movieData.numberOfSeasons != null)
                //                   AdditionalInfoTile(
                //                     title: AppStrings.episode,
                //                     value: movieData.numberOfEpisodes.toString()
                //                   ),
                //                 if ((movieData.networks ?? []).isNotEmpty)
                //                   AdditionalInfoTile(
                //                     title: AppStrings.networks,
                //                     widget: SizedBox(
                //                       height: 38,
                //                       child: ListView.separated(
                //                         scrollDirection: Axis.horizontal,
                //                         itemCount: (movieData.networks ?? []).length,
                //                         separatorBuilder: (_, _) => const SizedBox(width: 10),
                //                         itemBuilder: (_, index) {
                //                           final network = (movieData.networks ?? [])[index];
                //                           return MovieImageWidget(
                //                             tooltipMessage: network.name ?? '',
                //                             imagePath: (network.logoPath ?? '').generateImageURL,
                //                             radius: 0,
                //                             fit: BoxFit.contain,
                //                           );
                //                         },
                //                       ),
                //                     )
                //                   ),
                //                 if ((movieData.productionCompanies ?? []).isNotEmpty)
                //                   AdditionalInfoTile(
                //                     title: AppStrings.productions,
                //                     widget: SizedBox(
                //                       height: 38,
                //                       child: ListView.separated(
                //                         scrollDirection: Axis.horizontal,
                //                         itemCount: (movieData.productionCompanies ?? []).length,
                //                         separatorBuilder: (_, _) => const SizedBox(width: 10),
                //                         itemBuilder: (_, index) {
                //                           final network = (movieData.productionCompanies ?? [])[index];
                //                           if ((network.logoPath ?? '').isBlank) return SizedBox.shrink();
                //                           return MovieImageWidget(
                //                             tooltipMessage: network.name ?? '',
                //                             imagePath: (network.logoPath ?? '').generateImageURL,
                //                             radius: 0,
                //                             fit: BoxFit.contain,
                //                           );
                //                         },
                //                       ),
                //                     )
                //                   ),
                //                 if (!awards.value.isBlank) ...[
                //                   AdditionalInfoTile(
                //                     title: AppStrings.awards,
                //                     value: awards.value.replaceNA
                //                   ),
                //                   SizedBox(height: 5)
                //                 ],
                //                 if (mobileView) ...[
                //                   Padding(
                //                     padding: const EdgeInsets.symmetric(vertical: 6),
                //                     child: Row(
                //                       spacing:screenType == ScreenType.mobile
                //                       ? 6
                //                       : 12,
                //                       children: List.generate(
                //                         movieTvWatchData?.watchRegion == null
                //                         ? 1
                //                         : 2, 
                //                         (watchIndex) {
                //                           return Expanded(
                //                             child: CustomGradientButton(
                //                               label: watchIndex == 0
                //                               ? AppStrings.readAllReviews
                //                               : AppStrings.watchProvider,
                //                               padding: EdgeInsetsGeometry.symmetric(vertical: 14),
                //                               shape: RoundedRectangleBorder(
                //                                 borderRadius: BorderRadiusGeometry.circular(6),
                //                               ),
                //                               textAlign: TextAlign.center,
                //                               textStyle: theme.labelLarge?.copyWith(
                //                                 color: MovieColors.white.withValues(alpha: 0.8)
                //                               ),
                //                               radius: 8,
                //                               onTap: () {
                //                                 switch (watchIndex) {
                //                                   case 0:
                //                                     context.pushNamed(
                //                                       AppRoutes.review,
                //                                       queryParameters: {
                //                                         'id': id,
                //                                         'showType': type,
                //                                         'title': type == 'movie' ? movieData.title : movieData.name
                //                                       }
                //                                     );
                //                                     break;
                //                                   case 1: 
                //                                     if (kIsWeb || kIsWasm) {
                //                                       showDialog(
                //                                         context: context,
                //                                         barrierColor: MovieColors.transparent,
                //                                         builder: (_) {
                //                                           return AlertDialog(
                //                                             contentPadding: EdgeInsets.zero,
                //                                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                //                                             content: SizedBox(
                //                                               width: 400,
                //                                               height: 400,
                //                                               child: WatchProviderBottomSheet(
                //                                                 watchProvider: movieTvWatchData,
                //                                               ),
                //                                             ),
                //                                           );
                //                                         }
                //                                       );
                //                                     } else {
                //                                       showModalBottomSheet(
                //                                         context: context, 
                //                                         isScrollControlled: true,
                //                                         shape: RoundedRectangleBorder(
                //                                           borderRadius: BorderRadius.only(
                //                                             topLeft: Radius.circular(20),
                //                                             topRight: Radius.circular(20)
                //                                           )
                //                                         ),
                //                                         builder: (_) => WatchProviderBottomSheet(
                //                                           watchProvider: movieTvWatchData,
                //                                         )
                //                                       );
                //                                     }
                //                                   default:
                //                                 }
                //                               }
                //                             ),
                //                           );
                //                         }
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //                 const SizedBox(height: 10),
                //                 MovieText(
                //                   title: AppStrings.keywords,
                //                   style: theme.titleMedium?.copyWith(
                //                     color: MovieColors.textPrimary,
                //                     fontSize: 18,
                //                     fontWeight: FontWeight.w600
                //                   ),
                //                 ),
                //                 const SizedBox(height: 10),
                //                 movieKeywordList.isNotEmpty
                //                 ? Wrap(
                //                     runSpacing: 6,
                //                     spacing: 6,
                //                     children: List.generate(
                //                       movieKeywordList.length,
                //                       (index) {
                //                         final keyword = movieKeywordList[index];
                //                         return CustomKeywordChipWidget(
                //                           onTap: () => context.pushNamed(
                //                             AppRoutes.searchMovieByKeywordScreen,
                //                             queryParameters: {
                //                               'id': '${keyword.id}',
                //                               'name': keyword.name ?? '',
                //                               'type': type
                //                             }
                //                           ),
                //                           title: keyword.name ?? ''
                //                         );
                //                       }
                //                     ),
                //                   )
                //                 : MovieText(title: AppStrings.noKeywordsFound),
                //                 ////recommendations
                //                 SizedBox(height: mobileView ? 20 : 30),
                //                 MovieText(
                //                   title: AppStrings.recommendations,
                //                   style: theme.titleMedium?.copyWith(
                //                     color: MovieColors.textPrimary,
                //                     fontSize: 18,
                //                     fontWeight: FontWeight.w600
                //                   ),
                //                 ),
                //                 const SizedBox(height: 10),
                //                 recommendedMovieList.isNotEmpty
                //                 ? SizedBox(
                //                   height: 162,
                //                   child: ListView.separated(
                //                     scrollDirection: Axis.horizontal,
                //                     itemCount: recommendedMovieList.length,
                //                     separatorBuilder: (_,_) => SizedBox(
                //                       width: screenType == ScreenType.mobile
                //                       ? 4
                //                       : 12
                //                     ),
                //                     itemBuilder: (context, index) {
                //                       final cast = recommendedMovieList[index];
                //                       return MovieCastBanner(
                //                         width: 200,
                //                         height: 112,
                //                         onTap: () => context.pushNamed(
                //                           AppRoutes.movieDetails,
                //                           queryParameters: {
                //                             'id': cast.id.toString(),
                //                             'type': type
                //                           }
                //                         ),
                //                         imagePath: cast.backdropPath.generateImageURL,
                //                         title: cast.title,
                //                         radius: 6,
                //                       );
                //                     },
                //                   ),
                //                 )
                //                 : MovieText(title: AppStrings.noRecommendedMoviesFound),
                //                 SizedBox(height: mobileView ? 10 : 20),
                //                 MovieText(
                //                   title: AppStrings.videos,
                //                   style: theme.titleMedium?.copyWith(
                //                     color: MovieColors.textPrimary,
                //                     fontSize: 18,
                //                     fontWeight: FontWeight.w600
                //                   ),
                //                 ),
                //                 const SizedBox(height: 10),
                //                 movieVideoList.isNotEmpty
                //                 ? SizedBox(
                //                   height: 180,
                //                   child: ListView.separated(
                //                     scrollDirection: Axis.horizontal,
                //                     itemCount: movieVideoList.length,
                //                     separatorBuilder: (_, _) => SizedBox(
                //                       width: screenType == ScreenType.mobile
                //                       ? 4
                //                       : 12
                //                     ),
                //                     itemBuilder: (_, index) {
                //                       final video = movieVideoList[index];
                //                       final thumbnailUrl = (video.key ?? '').generateYouTubeThumbnail;
                //                       final youTubeURL = (video.key ?? '').generateYouTubeURL;
                //                       return GestureDetector(
                //                         // having some issue in youtube video player
                //                         // onTap: () => context.pushNamed(
                //                         //   AppRoutes.videoPlayer,
                //                         //   extra: {
                //                         //     'videos': movieVideoList,
                //                         //     'initialIndex': index,
                //                         //   },
                //                         // ),
                //                         onTap: () {
                //                           if (youTubeURL.isBlank) {
                //                             CustomSnackBar.show(
                //                               context, 
                //                               message: 'Video not avaiable'
                //                             );
                //                             return;
                //                           }
                //                           launchUrl(Uri.parse(youTubeURL));
                //                         },
                //                         child: SizedBox(
                //                           width: 250,
                //                           child: Column(
                //                             crossAxisAlignment: CrossAxisAlignment.start,
                //                             children: [
                //                               ClipRRect(
                //                                 borderRadius: BorderRadius.circular(6),
                //                                 child: Stack(
                //                                   alignment: Alignment.center,
                //                                   children: [
                //                                     MovieImageWidget(
                //                                       imagePath: thumbnailUrl,
                //                                       height: 140,
                //                                       width: 250,
                //                                       radius: 6,
                //                                     ),
                //                                     Container(
                //                                       decoration: BoxDecoration(
                //                                         color: MovieColors.black.withValues(alpha: 0.5),
                //                                         shape: BoxShape.circle,
                //                                       ),
                //                                       padding: const EdgeInsets.all(8),
                //                                       child: const Icon(
                //                                         Icons.play_arrow_rounded,
                //                                         color: MovieColors.white,
                //                                         size: 32,
                //                                       ),
                //                                     ),
                //                                   ],
                //                                 ),
                //                               ),
                //                               const SizedBox(height: 6),
                //                               MovieText(
                //                                 title: video.name ?? '',
                //                                 maxLine: 1,
                //                                 overflow: TextOverflow.ellipsis,
                //                                 style: TextStyle(
                //                                   color: MovieColors.textPrimary,
                //                                   fontSize: 13,
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       );
                //                     },
                //                   ),
                //                 )
                //                 : MovieText(title: AppStrings.noVideosFound),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ],
                //     );
                //   }
                // );
              },
              error: (_, _) => Center(child: Text(AppStrings.noDataAvailable)), 
              loading: () => MovieDetailsShimmer(screenType: screenType)
            );
          }
        ),
      ),
    );
  }
}
class MovieDetailsHero extends HookConsumerWidget {
  final MovieDetailEntity movieData;
  final String id;
  final String type;
  final List<ReleaseResults> certificateList;
  final WatchProviderModal? movieTvWatchData;
  final String watchTrailerYouTubeId;
  final bool hasWatchlistMarked;
  final bool hasFavouriteMarked;

  const MovieDetailsHero({
    super.key, 
    required this.movieData,
    this.id = '',
    this.type = '',
    this.certificateList = const [],
    this.movieTvWatchData,
    this.watchTrailerYouTubeId = '',
    this.hasWatchlistMarked = false,
    this.hasFavouriteMarked = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final screenType = width.screenType;

        final horizontalPadding = screenType == ScreenType.mobile
        ? 20.0
        : screenType == ScreenType.tablet
            ? 20.0
            : (width * 0.043).clamp(20.0, 30.0);

        final heroHeight = screenType == ScreenType.tablet
        ? 410.0
        : 460.0;

        return SizedBox(
          width: double.infinity,
          height: heroHeight,
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Background image
              MovieImageWidget(
                imagePath: (movieData.backdropPath ?? '').generateImageURL,
                radius: 0,
              ),
              // Left-to-right gradient
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      // Color(0xF222160A),
                      // Color(0xD94A2B0D),
                      // Color(0x884A2B0D),
                      // Color(0x18201005),
                      Color(0xF2121212), // Strong dark overlay
                      Color(0xD9121212), // Medium-dark overlay
                      Color(0x88121212), // Subtle overlay
                      Color(0x18121212), // Nearly transparent
                    ],
                    stops: [0.0, 0.38, 0.67, 1.0],
                  ),
                ),
              ),
              // Bottom gradient
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      // Color(0xD92E1B0B),
                      // Color(0x00000000)
                      Color(0xD9121212), // Fade into app background
                      Color(0x00121212), // Transparent at the top
                    ],
                  ),
                ),
              ),
              // Keep your existing foreground content here.
              Padding(
                padding: EdgeInsets.fromLTRB(
                  horizontalPadding  - 8,
                  screenType == ScreenType.mobile ? 20 : 30,
                  horizontalPadding,
                  28,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: screenType == ScreenType.mobile ? 560 : width,
                    ),
                    child: buildMovieContent(
                      context: context,
                      isMobile: screenType == ScreenType.mobile,
                      isTablet: screenType == ScreenType.tablet,
                      theme: theme,
                      ref: ref
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }


  Widget buildMovieContent({
    required BuildContext context,
    required bool isMobile,
    required bool isTablet,
    required ThemeData theme,
    required WidgetRef ref
  }) {
    return Row(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MovieImageWidget(
          imagePath: (movieData.posterPath ?? '').generateImageURL,
          height: 290,
          width: 195,
          radius: 6,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 575),
                child: Text(
                  type == 'movie'
                  ? movieData.title ?? ''
                  : movieData.name ?? '',
                  style: TextStyle(
                    fontSize: isMobile ? 37 : 48,
                    fontWeight: FontWeight.w900,
                    height: 1.0,
                    letterSpacing: isMobile ? -1.2 : -1.8,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 14),
              GenresWidget(
                movieData: movieData,
              ),
              const SizedBox(height: 8),
              RatingReleaseYearWidget(
                movieData: movieData, 
                certificateList: certificateList
              ),
              const SizedBox(height: 16),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 575),
                child: CustomGradientButton(
                  onTap: () {
                    final youTubeURL = watchTrailerYouTubeId.generateYouTubeURL;
                    if (youTubeURL.isBlank) {
                      CustomSnackBar.show(
                        context, 
                        message: type == 'movie'
                        ? AppStrings.noMovieVideosAvailable
                        : AppStrings.noTvVideosAvailable
                      );
                      return;
                    }
                    launchUrl(Uri.parse(youTubeURL));
                  },
                  applyGradient: false,
                  color: MovieColors.primaryColor,
                  widget: Row(
                    spacing: 4,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.play_arrow_rounded, size: 20, color: MovieColors.black),
                      MovieText(
                        title: 'Watch Trailer',
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: MovieColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                  padding: EdgeInsetsGeometry.only(
                    top: 8,
                    bottom: 8,
                    left: 10,
                    right: 16
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Row(
                spacing: 8,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _MovieAction(
                    icon: hasFavouriteMarked
                    ? Icons.favorite
                    : Icons.favorite_border,
                    label: 'Favourite',
                    iconColor: hasFavouriteMarked 
                    ? MovieColors.red
                    : null,
                    onTap: () {
                      final favouriteNotifier = ref.read(movieFavouriteProvider.notifier);
                      if (hasFavouriteMarked) {
                        favouriteNotifier.removeFavourite(id: id);
                        return;
                      }
                      final entity = MovieWatchlistEntity(
                        id: id,
                        title: type == 'movie'
                        ? movieData.title ?? ''
                        : movieData.name ?? '',
                        mediaType: type,
                        posterPath: movieData.posterPath ?? '',
                        createdDate: DateTime.now().toString()
                      );
                      favouriteNotifier.saveFavourite(entity: entity);
                    },
                  ),
                  _MovieAction(
                    icon: hasWatchlistMarked
                    ? Icons.bookmark
                    : Icons.bookmark_border_outlined,
                    label: 'Watchlist',
                    iconColor: hasWatchlistMarked 
                    ? MovieColors.primaryColor
                    : null,
                    onTap: () {
                      final watchlistNotifier = ref.read(movieWatchlistProvider.notifier);
                      if (hasWatchlistMarked) {
                        watchlistNotifier.removeWatchlist(id: id);
                        return;
                      }
                      final entity = MovieWatchlistEntity(
                        id: id,
                        title: type == 'movie'
                        ? movieData.title ?? ''
                        : movieData.name ?? '',
                        mediaType: type,
                        posterPath: movieData.posterPath ?? '',
                        createdDate: DateTime.now().toString()
                      );
                      watchlistNotifier.saveWatchlist(entity: entity);
                    },
                  ),
                  _MovieAction(
                    icon: Icons.rate_review_outlined,
                    label: 'Review',
                    onTap: () {
                      context.pushNamed(
                        AppRoutes.review,
                        queryParameters: {
                          'id': id,
                          'showType': type,
                          'title': type == 'movie' ? movieData.title : movieData.name
                        }
                      );
                    },
                  ),
                  if (movieTvWatchData?.watchRegion != null) ...[
                    _MovieAction(
                      icon: Icons.movie_outlined,
                      label: 'Watch Provider',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) {
                            return AlertDialog(
                              contentPadding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              content: SizedBox(
                                width: 500,
                                height: 500,
                                child: WatchProviderBottomSheet(
                                  watchProvider: movieTvWatchData,
                                  screenType: ScreenType.mediumDesktop,
                                ),
                              ),
                            );
                          }
                        );
                      },
                    ),
                  ]
                ],
              ),
              const SizedBox(height: 12),
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: LayoutBuilder(
                    builder: (context, box) {
                      const fontSize = 12.0;
                      const lineHeight = 1.4;
                      final lines = (box.maxHeight / (fontSize * lineHeight))
                      .floor()
                      .clamp(1, 100);
                      return Text(
                        movieData.overview ?? '',
                        maxLines: lines,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: MovieColors.white.withValues(alpha: 0.6),
                          fontSize: fontSize,
                          height: lineHeight,
                          fontWeight: FontWeight.w100,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}


class _MovieAction extends StatelessWidget {
  
  const _MovieAction({
    required this.icon,
    required this.label,
    this.iconColor,
    this.onTap
  });

  final IconData icon;
  final String label;
  final Function()? onTap;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6
        ),
        decoration: ShapeDecoration(
          color: MovieColors.white.withValues(alpha: 0.1),
          shape: StadiumBorder()
        ),
        child: Row(
          spacing: 2,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: iconColor ?? MovieColors.white.withValues(alpha: 0.7),
              size: 20,
            ),
            const SizedBox(height: 5),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: MovieColors.white.withValues(alpha: 0.7),
                fontSize: 12,
                height: 1.25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}