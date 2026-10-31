import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../domain/entities/movie_details_entity.dart';
import '../../domain/entities/release_dates_entity.dart';
import '../../domain/entities/watch_provider_entity.dart';
import '../../domain/entities/movie_watchlist_entity.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../../core/utils/custom_snackbar.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/widgets/custom_gradient_button.dart';
import '../../../../features/movie_details/presentation/widget/genres_widget.dart';
import '../../../../features/movie_details/presentation/widget/movie_action_widget.dart';
import '../../../../features/movie_details/presentation/provider/movie_favourite_provider.dart';
import '../../../../features/movie_details/presentation/provider/movie_watchlist_provider.dart';
import '../../../../features/movie_details/presentation/widget/rating_release_year_widget.dart';
import '../../../../features/movie_details/presentation/widget/watch_provider_bottom_sheet.dart';

class MoviesWebHeaderWidget extends HookConsumerWidget {

  final MovieDetailEntity movieData;
  final String id;
  final String type;
  final List<ReleaseResults> certificateList;
  final WatchProviderModal? movieTvWatchData;
  final String watchTrailerYouTubeId;
  final bool hasWatchlistMarked;
  final bool hasFavouriteMarked;

  const MoviesWebHeaderWidget({
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
              GenresWidget(movieData: movieData),
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
                        title: AppStrings.watchTrailer,
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
              SizedBox(
                height: 34,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    MovieActionWidget(
                      icon: hasFavouriteMarked
                      ? Icons.favorite
                      : Icons.favorite_border,
                      label: AppStrings.favourite,
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
                    SizedBox(width: 8),
                    MovieActionWidget(
                      icon: hasWatchlistMarked
                      ? Icons.bookmark
                      : Icons.bookmark_border_outlined,
                      label: AppStrings.watchlist,
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
                    SizedBox(width: 8),
                    MovieActionWidget(
                      icon: Icons.rate_review_outlined,
                      label: AppStrings.review,
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
                    SizedBox(width: 8),
                    if (movieTvWatchData?.watchRegion != null) ...[
                      MovieActionWidget(
                        icon: Icons.movie_outlined,
                        label: AppStrings.watchProvider,
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