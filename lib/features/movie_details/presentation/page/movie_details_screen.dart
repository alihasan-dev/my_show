import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/widgets/vote_percentage_widget.dart';
import '../provider/movie_cast_provider.dart';
import '../provider/movie_details_provider.dart';
import '../provider/movie_keyword_provider.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/widgets/movie_cast_banner.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/custom_sliver_app_bar.dart';
import '../../../../core/widgets/custom_keyword_chip_widget.dart';
import '../../../../features/movie_details/presentation/widget/additional_info_tile.dart';
import '../../../../features/movie_details/presentation/provider/movie_recommentation_provider.dart';
import '../widget/movie_details_shimmer_widget.dart';

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
    final formatter = NumberFormat.currency(locale: "en_US", symbol: "\$");
    final theme = Theme.of(context).textTheme;
    final movieDetails = ref.watch(movieDetailsProvider((id: id, type: type)));
    final movieCast = ref.watch(movieCastProvider((id: id, type: type)));
    final movieRecommentation = ref.watch(movieRecommentationProvider((id: id, type: type)));
    final movieKeywords = ref.watch(movieKeywordProvider((id: id, type: type)));
    final recommendedMovieList = movieRecommentation.asData?.value.result ?? [];
    final movieCastList = movieCast.asData?.value.cast ?? [];
    final movieCrewList = movieCast.asData?.value.crew ?? [];
    final movieKeywordList = movieKeywords.asData?.value.keywords ?? [];
    return Scaffold(
      body: SafeArea(
        top: false,
        child: movieDetails.when(
          data: (data) {
            final movieData = data;
            final year = (movieData.releaseDate ?? '').split('-');
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
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    type == 'movie'
                                    ? '${movieData.title ?? ''} (${year.first})'
                                    : '${movieData.name ?? ''} (${year.first})',
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
                                      VotePercentageWidget(
                                        height: 40,
                                        width: 40,
                                        title: (movieData.voteAverage! * 10).toStringAsFixed(0),
                                        votePercent: movieData.voteAverage! / 10,
                                        yTransform: 0,
                                      ),
                                      const SizedBox(width: 12),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.favorite_border),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.bookmark_border),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.play_circle),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
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
                        const SizedBox(height: 10),
                        MovieText(
                          title: "Overview",
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
                        if (movieCastList.isNotEmpty) ...[
                          const SizedBox(height: 24),
                          MovieText(
                            title: "Cast",
                            style: theme.titleMedium?.copyWith(
                              color: MovieColors.textPrimary,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 230,
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
                            title: "Crew",
                            style: theme.titleMedium?.copyWith(
                              color: MovieColors.textPrimary,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 230,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: movieCrewList.length,
                              separatorBuilder: (_,_) => const SizedBox(width: 12),
                              itemBuilder: (context, index) {
                                final cast = movieCrewList[index];
                                return MovieCastBanner(
                                  onTap: () => context.pushNamed(
                                    AppRoutes.profile,
                                    queryParameters: {
                                      'userId': '${cast.id}'
                                    }
                                  ),
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
                          title: "Additional Info",
                          style: theme.titleMedium?.copyWith(
                            color: MovieColors.textPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(height: 12),
                        AdditionalInfoTile(
                          title: 'Status',
                          value: movieData.status ?? ''
                        ),
                        if (!(movieData.releaseDate ?? '').isBlank)
                          AdditionalInfoTile(
                            title: 'Release Date',
                            value: movieData.releaseDate!.formatDOB(hideYrs: true)
                          ),
                        AdditionalInfoTile(
                          title: 'Original Language',
                          value: (movieData.originalLanguage ?? '').formatLanguage
                        ),
                        if (movieData.budget != null)
                          AdditionalInfoTile(
                            title: 'Budget',
                            value: (movieData.budget ?? 0) == 0
                            ? 'N/A'
                            : formatter.format(movieData.budget ?? 0)
                          ),
                        if (movieData.revenue != null)
                          AdditionalInfoTile(
                            title: 'Revenue',
                            value: (movieData.revenue ?? 0) == 0
                            ? 'N/A'
                            : formatter.format(movieData.revenue ?? 0)
                          ),
                        if (!(movieData.type ?? '').isBlank)
                          AdditionalInfoTile(
                            title: 'Type',
                            value: movieData.type ?? ''
                          ),
                        if (movieData.numberOfSeasons != null)
                          AdditionalInfoTile(
                            title: 'Seasons',
                            value: movieData.numberOfSeasons.toString()
                          ),
                        if (movieData.numberOfSeasons != null)
                          AdditionalInfoTile(
                            title: 'Episode',
                            value: movieData.numberOfEpisodes.toString()
                          ),
                        if ((movieData.networks ?? []).isNotEmpty)
                          AdditionalInfoTile(
                            title: 'Networks',
                            widget: SizedBox(
                              height: 38,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: (movieData.networks ?? []).length,
                                separatorBuilder: (_,_) => const SizedBox(width: 10),
                                itemBuilder: (context, index) {
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
                            title: 'Productions',
                            widget: SizedBox(
                              height: 38,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: (movieData.productionCompanies ?? []).length,
                                separatorBuilder: (_,_) => const SizedBox(width: 10),
                                itemBuilder: (context, index) {
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
                        const SizedBox(height: 10),
                        MovieText(
                          title: "Keywords",
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
                        : MovieText(title: 'No keywords found'),
                        ////recommendations
                        const SizedBox(height: 18),
                        MovieText(
                          title: "Recommendations",
                          style: theme.titleMedium?.copyWith(
                            color: MovieColors.textPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(height: 10),
                        recommendedMovieList.isNotEmpty
                        ? SizedBox(
                          height: 160,
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
                        : MovieText(title: 'No recommended movies found'),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
          error: (_,_) {
            return Center(child: Text('No data found'));
          }, 
          loading: () => MovieDetailsShimmer()
        ),
      ),
    );
  }
}
