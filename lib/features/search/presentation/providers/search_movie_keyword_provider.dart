import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../features/search/domain/entities/search_movies_keyword_entity.dart';
import '../../../../features/search/domain/usecases/search_movie_keyword_usecase.dart';
import 'package:riverpod/legacy.dart';

class SearchMovieKeywordNotifier extends StateNotifier<AsyncValue<SearchMoviesKeywordEntity>> {

  final SearchMovieKeywordUsecase searchMovieKeywordUsecase;
  int pageCount = 1;
  List<Movies> movieList = [];

  SearchMovieKeywordNotifier(this.searchMovieKeywordUsecase) : super(AsyncValue.loading());


  Future<AsyncValue<SearchMoviesKeywordEntity>> searchMovieKeyword({required String query, required String type}) async {
    final result = await searchMovieKeywordUsecase.searchMovieKeyword(query: query, type: type, pageCount: pageCount);
    result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (entity) {
        movieList.addAll(entity.result ?? []);
        entity.result = movieList;
        state = AsyncValue.data(entity);
        pageCount+=1;
      },
    );
    return state;
  }

}

final searchMovieKeywordProvider = StateNotifierProvider.autoDispose<SearchMovieKeywordNotifier, AsyncValue<SearchMoviesKeywordEntity>>((ref) {
  return SearchMovieKeywordNotifier(ref.read(searchMovieKeywordUseCaseProvider));
});