import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/movie_tv_search_widget.dart';
import '../providers/search_movie_keyword_provider.dart';
import '../widgets/search_empty_widget.dart';
import '../widgets/search_shimmer_widget.dart';

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
    // final theme = Theme.of(context);
    final queryKey = '$id-$name';
    final searchMovieKeyword = ref.watch(searchMovieKeywordProvider(queryKey));
    final movieList = searchMovieKeyword.asData?.value.result ?? [];
    final scrollController = useScrollController();
    final searchQueryController = useTextEditingController();
    final enableSearch = useState<bool>(false);
    Timer? timer;

    useEffect(() {
      void listener() {
        if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 200) {
          if (timer == null || !timer!.isActive) {
            ref.read(searchMovieKeywordProvider(queryKey).notifier).searchMovieKeyword(query: queryKey, type: type);
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
      ref.read(searchMovieKeywordProvider(queryKey).notifier).searchMovieKeyword(query: queryKey, type: type);
      return null;
    }, [name]);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: false,
        title: AnimatedSize(
          duration: Duration(milliseconds: 250),
          child: enableSearch.value
          ? TextField(
              controller: searchQueryController,
              onChanged: (value) => ref.read(searchMovieKeywordProvider(queryKey).notifier).search(query: value),
              decoration: InputDecoration.collapsed(
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontSize: 18
                )
              ),
              autofocus: true,
            )
          : Text(
             "${AppStrings.searchFor} '$name'",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              if (enableSearch.value) {
                searchQueryController.clear();
                ref.read(searchMovieKeywordProvider(queryKey).notifier).search(query: '');
              }
              enableSearch.value = !enableSearch.value;
            }, 
            icon: Icon(
              enableSearch.value 
              ? Icons.clear 
              : Icons.search
            ),
          ),
        ],
      ),
      body: SafeArea(
        top: false,
        child: searchMovieKeyword.when(
          data: (_) {
            if (movieList.isEmpty) return SearchEmptyWidget();
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
                return MovieTvSearchWidget(
                  onTap: () {
                    if (movie.id == null || type.isBlank) return;
                    context.pushNamed(
                      AppRoutes.movieDetails,
                      queryParameters: {
                        'id': '${movie.id}',
                        'type': type
                      }
                    );
                  },
                  imagePath: movie.posterPath ?? '',
                  title: movie.title ?? movie.name ?? '',
                  releaseDate: movie.releaseDate ?? '',
                  overview: movie.overview ?? '',
                );
              }
            );
          }, 
          error: (_,_) => SearchEmptyWidget(),
          loading: () => SearchShimmerWidget()
        ),
      )
    );
  }
}