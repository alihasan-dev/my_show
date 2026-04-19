import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_db/core/widgets/movie_tv_search_widget.dart';
import '../../../../core/widgets/movie_carousel_widget.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../../core/routes/app_routes.dart';
import '../providers/multi_search_provider.dart';

class MultiSearchScreen extends HookConsumerWidget {
  
  const MultiSearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final searchMovieKeyword = ref.watch(multiSearchProvider);
    final movieList = searchMovieKeyword.asData?.value.result ?? [];
    final scrollController = useScrollController();
    final searchTextController = useTextEditingController();
    final showLoader = useState<bool>(false);
    final hasSearched = useState<bool>(false);
    final searchHint = useMemoized(() => AppStrings.searchHints[Random().nextInt(AppStrings.searchHints.length)]);
    Timer? timer;

    useEffect(() {
      void listener() {
        final normalizedSearchText = searchTextController.text.trim();
        if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 200 && normalizedSearchText.length > 2) {
          timer?.cancel();
          timer = Timer(const Duration(milliseconds: 1000), () {
            ref.read(multiSearchProvider.notifier).multiSearch(query: searchTextController.text.trim());
          });
        }
      }
      void textListener() {
        final normalizedSearchText = searchTextController.text.trim();
        timer?.cancel();
        timer = Timer(const Duration(milliseconds: 1000), () {
          if (normalizedSearchText.length > 2) {
            ref.read(multiSearchProvider.notifier).multiSearch(query: normalizedSearchText, isPagination: false);
            hasSearched.value = true;
          } else {
            ref.read(multiSearchProvider.notifier).resetSearch();
            hasSearched.value = false;
          }
        });
      }
      scrollController.addListener(listener);
      searchTextController.addListener(textListener);
      return () {
        scrollController.removeListener(listener);
        searchTextController.removeListener(textListener);
        timer?.cancel();
      };
    }, [scrollController, searchTextController]);

    ref.listen(multiSearchProvider, (prev, next) => showLoader.value = next.isLoading && movieList.isEmpty);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextField(
              controller: searchTextController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                hintText: searchHint,
                hintStyle: theme.textTheme.bodyMedium?.copyWith(
                  color: MovieColors.grey
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none
                ),
                fillColor: MovieColors.grey.withValues(alpha: 0.1),
                filled: true,
                prefixIcon: const Icon(Icons.search, color: MovieColors.grey),
              ),
            ),
            SizedBox(height: 14),
            Expanded(
              child: Stack(
                children: [
                  movieList.isEmpty && !showLoader.value
                  ? Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            hasSearched.value
                            ? Icons.search_off_rounded
                            : Icons.movie_filter_outlined, 
                            size: hasSearched.value ? 64 : 80, 
                            color: MovieColors.grey
                          ),
                          if (!hasSearched.value) ...[
                            SizedBox(height: 12),
                            MovieText(
                              title: AppStrings.searchInitialTitle,
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: MovieColors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                          SizedBox(height: hasSearched.value ? 12 : 8),
                          MovieText(
                            title: hasSearched.value
                            ? AppStrings.noResultsFound
                            : AppStrings.searchInitialSubtitle,
                            style: theme.textTheme.bodyMedium?.copyWith(color: MovieColors.textSecondary),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  : ListView.separated(
                    shrinkWrap: true,
                    controller: scrollController,
                    padding: const EdgeInsets.only(bottom: 14),
                    itemCount: movieList.length,
                    separatorBuilder: (_,_) => SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final movie = movieList[index];
                      if (movie.id == null) return SizedBox.shrink();
                      return movie.mediaType == 'person'
                      ? Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: MovieColors.grey.withValues(alpha: 0.1),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 14,
                                children: [
                                  MovieImageWidget(
                                    height: 140,
                                    width: 100,
                                    imagePath: (movie.profilePath ?? '').generateImageURL
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    spacing: 2,
                                    children: [
                                      MovieText(
                                        title: movie.originalName ?? '',
                                        style: theme.textTheme.bodyMedium?.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: MovieColors.textPrimary
                                        ),
                                        maxLine: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      MovieText(
                                        title: movie.gender!.parseGender,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(color: MovieColors.textPrimary),
                                      ),
                                      MovieText(
                                        title: movie.knownForDepartment ?? '',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(color: MovieColors.textPrimary),
                                      ),
                                      SizedBox(height: 10),
                                      InkWell(
                                        borderRadius: BorderRadius.circular(20),
                                        onTap: () {
                                          if (movie.id == null) return;
                                          context.pushNamed(
                                            AppRoutes.profile,
                                            queryParameters: {'userId': '${movie.id}'}
                                          );
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(
                                              side: BorderSide(
                                                color: MovieColors.white.withValues(alpha: 0.25),
                                                width: 1.5,
                                              )
                                            ),
                                            gradient: LinearGradient(
                                              colors: [
                                                MovieColors.white.withValues(alpha: 0.20),
                                                MovieColors.white.withValues(alpha: 0.05),
                                              ],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                            ),
                                          ),
                                          child: MovieText(
                                            title: AppStrings.viewProfile,
                                            style: theme.textTheme.labelMedium?.copyWith(
                                              color: MovieColors.white.withValues(alpha: 0.8)
                                            ),
                                          )
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              if (movie.knownFor.isNotEmpty) ...[
                                SizedBox(height: 10),
                                MovieCarouselWidget(
                                  itemCount: movie.knownFor.length,
                                  height: 120,
                                  itemBuilder: (_, subIndex) {
                                    final item = movie.knownFor[subIndex];
                                    return MovieTvSearchWidget(
                                      onTap: () {
                                        if (item.id == null || (item.mediaType ?? '').isBlank) return;
                                        context.pushNamed(
                                          AppRoutes.movieDetails,
                                          queryParameters: {
                                            'id': '${item.id}',
                                            'type': item.mediaType
                                          }
                                        );
                                      },
                                      maxLine: 3,
                                      imagePath: item.backdropPath ?? '',
                                      title: item.title ?? movie.name ?? '',
                                      releaseDate: item.releaseDate ?? '',
                                      overview: item.overview ?? '',
                                    );
                                  },
                                ),
                              ]
                            ],
                          ),
                        )
                      : MovieTvSearchWidget(
                        onTap: () {
                          if (movie.id == null || (movie.mediaType ?? '').isBlank) return;
                          context.pushNamed(
                            AppRoutes.movieDetails,
                            queryParameters: {
                              'id': '${movie.id}',
                              'type': movie.mediaType
                            }
                          );
                        },
                        imagePath: movie.posterPath ?? '',
                        title: movie.title ?? movie.name ?? '',
                        releaseDate: movie.releaseDate ?? '',
                        overview: movie.overview ?? '',
                      );
                    }
                  ),
                  if (showLoader.value)
                    const Center(child: CircularProgressIndicator()),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}