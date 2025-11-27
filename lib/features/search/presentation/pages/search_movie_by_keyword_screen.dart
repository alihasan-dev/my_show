import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../../../core/routes/app_routes.dart';
import '../providers/search_movie_keyword_provider.dart';

class SearchMovieByKeywordScreen extends HookConsumerWidget {
  
  final int id;
  final String name;
  final String type;
  const SearchMovieByKeywordScreen({
    required this.id, 
    required this.name,
    required this.type,
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final searchMovieKeyword = ref.watch(searchMovieKeywordProvider);
    final movieList = searchMovieKeyword.asData?.value.result ?? [];
    final scrollController = useScrollController();
    Timer? timer;

    useEffect(() {
      void listener() {
        if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 200) {
          if (timer == null || !timer!.isActive) {
            ref.read(searchMovieKeywordProvider.notifier).searchMovieKeyword(query: '$id-$name', type: type);
            timer = Timer(const Duration(seconds: 2), () {});
          }
        }
      }
      scrollController.addListener(listener);
      return () {
        scrollController.removeListener(listener);
        timer?.cancel();
      };
    }, [scrollController]);
    
    useEffect(() {
      ref.read(searchMovieKeywordProvider.notifier).searchMovieKeyword(query: '$id-$name', type: type);
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: MovieText(
          title: "${AppStrings.searchFor} '$name'",
          style: theme.textTheme.titleLarge?.copyWith(
            fontSize: 18
          ),
        ),
      ),
      body: SafeArea(
        top: false,
        child: searchMovieKeyword.when(
          data: (data) {
            return ListView.separated(
              shrinkWrap: true,
              controller: scrollController,
              padding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 20
              ),
              itemCount: movieList.length,
              separatorBuilder: (_,_) => SizedBox(height: 12),
              itemBuilder: (context, index) {
                final movie = movieList[index];
                return InkWell(
                  onTap: () => context.pushNamed(
                    AppRoutes.movieDetails,
                    queryParameters: {
                      'id': '${movie.id}',
                      'type': type
                    }
                  ),
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 140,
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
                          imagePath: (movie.posterPath ?? '').generateImageURL,
                          width: 100,
                          height: double.maxFinite,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8)
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 8.0,
                              bottom: 10.0,
                              right: 8.0
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MovieText(
                                  title: movie.title ?? '',
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: MovieColors.textPrimary
                                  ),
                                  maxLine: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4),
                                MovieText(
                                  title: (movie.releaseDate ?? '').formatDOB(hideYrs: true),
                                  style: theme.textTheme.labelMedium?.copyWith(
                                    color: MovieColors.grey
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Expanded(
                                  child: MovieText(
                                    title: movie.overview ?? '',
                                    overflow: TextOverflow.ellipsis,
                                    maxLine: 4,
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: MovieColors.textSecondary
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
            );
          }, 
          error: (_,_) => Center(child: MovieText(title: AppStrings.noDataAvailable)), 
          loading: () => Center(child: CircularProgressIndicator())
        ),
      )
    );
  }
}