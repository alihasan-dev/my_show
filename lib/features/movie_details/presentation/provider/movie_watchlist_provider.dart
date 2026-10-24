import 'package:riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../domain/entities/movie_watchlist_entity.dart';
import '../../domain/usecases/movie_watchlist_usecase.dart';

class MovieWatchlistNotifier extends StateNotifier<AsyncValue<MovieWatchlistEntity?>> {

  final MovieWatchlistUsecase movieWatchlistUsecase;

  MovieWatchlistNotifier(this.movieWatchlistUsecase) : super(AsyncValue.loading());

  Future<void> saveWatchlist({required MovieWatchlistEntity entity}) async {
    await movieWatchlistUsecase.saveWatchlist(entity);
    getWatchlist(entity.id);
  }

  Future<AsyncValue<MovieWatchlistEntity?>> getWatchlist(String id) async {
    state = const AsyncValue.loading();
    final result = await movieWatchlistUsecase.getWatchlist(id);
    state = AsyncValue.data(result);
    return state;
  }

  Future<void> removeWatchlist({required String id}) async {
    if (id.isBlank) return;
    await movieWatchlistUsecase.removeWatchlist(id: id);
    getWatchlist(id);
  }

  // Future<void> clearRecentSearch() async {
  //   await recentSearchUsecase.clearRecentSearch();
  //   getRecentSearch();
  // }

  // bool get markedAsWatchlist {
  //   return state.value != null;
  // }
}

final movieWatchlistProvider = StateNotifierProvider.autoDispose<MovieWatchlistNotifier, AsyncValue<MovieWatchlistEntity?>>((ref) {
  return MovieWatchlistNotifier(ref.read(movieWatchlistUseCaseProvider));
});