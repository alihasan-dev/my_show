import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../features/search/domain/entities/search_movies_keyword_entity.dart';
import 'package:riverpod/legacy.dart';
import '../../domain/usecases/multi_search_usecase.dart';

class MultiSearchNotifier extends StateNotifier<AsyncValue<SearchMoviesKeywordEntity>> {

  final MultiSearchUsecase multiSearchUsecase;
  int pageCount = 1;
  List<Movies> movieList = [];

  MultiSearchNotifier(this.multiSearchUsecase) : super(AsyncValue.loading());


  Future<AsyncValue<SearchMoviesKeywordEntity>> multiSearch({required String query, bool isPagination = true}) async {
    if (movieList.isEmpty) state = const AsyncValue.loading();
    if (!isPagination) {
      pageCount = 1;
    }
    final result = await multiSearchUsecase.multiSearch(query: query, pageCount: pageCount);
    result.fold(
      (failure) {
        if (movieList.isNotEmpty && isPagination) return;
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (entity) {
        if (!isPagination) {
          movieList.clear();
        }
        if ((entity.result ?? []).isNotEmpty) pageCount+=1;
        movieList.addAll(entity.result ?? []);
        entity.result = movieList;
        state = AsyncValue.data(entity);
      },
    );
    return state;
  }

  void resetSearch() {
    movieList.clear();
    state = AsyncValue.error('Reset the search list', StackTrace.current);
  }

}

final multiSearchProvider = StateNotifierProvider.autoDispose<MultiSearchNotifier, AsyncValue<SearchMoviesKeywordEntity>>((ref) {
  return MultiSearchNotifier(ref.read(multiSearchUseCaseProvider));
});