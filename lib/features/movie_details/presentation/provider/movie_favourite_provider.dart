import 'package:riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../domain/entities/movie_watchlist_entity.dart';
import '../../domain/usecases/movie_favourite_usecase.dart';

class MovieFavouriteNotifier extends StateNotifier<AsyncValue<MovieWatchlistEntity?>> {

  final MovieFavouriteUsecase movieWatchlistUsecase;

  MovieFavouriteNotifier(this.movieWatchlistUsecase) : super(AsyncValue.loading());

  Future<void> saveFavourite({required MovieWatchlistEntity entity}) async {
    await movieWatchlistUsecase.saveFavourite(entity);
    getFavourite(entity.id);
  }

  Future<AsyncValue<MovieWatchlistEntity?>> getFavourite(String id) async {
    state = const AsyncValue.loading();
    final result = await movieWatchlistUsecase.getFavourite(id);
    state = AsyncValue.data(result);
    return state;
  }

  Future<void> removeFavourite({required String id}) async {
    if (id.isBlank) return;
    await movieWatchlistUsecase.removeFavourite(id: id);
    getFavourite(id);
  }
}

final movieFavouriteProvider = StateNotifierProvider.autoDispose<MovieFavouriteNotifier, AsyncValue<MovieWatchlistEntity?>>((ref) {
  return MovieFavouriteNotifier(ref.read(movieFavouriteUseCaseProvider));
});