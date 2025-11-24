import '/features/movie/domain/entities/trending_movie_entity.dart';
import 'package:riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';
import '../../domain/usecases/view_all_usecase.dart';

class ViewAllMoviesNotifier extends StateNotifier<AsyncValue<TrendingMoviesEntity>> {

  final ViewAllUsecase viewAllUsecase;
  int pageCount = 1;
  List<TrendingMovie> movieList = [];

  ViewAllMoviesNotifier(this.viewAllUsecase) : super(AsyncValue.loading());


  Future<AsyncValue<TrendingMoviesEntity>> viewAllShow({required String showType, required String showCategory}) async {
    final result = await viewAllUsecase.getAllShow(
      showType: showType, 
      showCategory: showCategory,
      page: pageCount
    );
    result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (entity) {
        movieList.addAll(entity.result);
        entity.result = movieList;
        state = AsyncValue.data(entity);
        pageCount+=1;
      },
    );
    return state;
  }

}

final viewAllProvider = StateNotifierProvider.autoDispose<ViewAllMoviesNotifier, AsyncValue<TrendingMoviesEntity>>((ref) {
  return ViewAllMoviesNotifier(ref.read(viewAllUseCaseProvider));
});