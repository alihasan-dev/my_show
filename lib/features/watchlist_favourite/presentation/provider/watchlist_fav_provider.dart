import 'package:riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';
import '../../../../core/utils/app_enums.dart';
import '../../domain/entities/watchlist_fav_entity.dart';
import '../../domain/usecases/watchlist_fav_usecase.dart';

class WatchlistFavNotifier extends StateNotifier<AsyncValue<List<WatchlistFavEntity>>> {

  final WatchlistFavUsecase watchlistFavUsecase;

  WatchlistFavNotifier(this.watchlistFavUsecase) : super(AsyncValue.loading());

  Future<AsyncValue<List<WatchlistFavEntity>>> getWatchFavList(WatchlistFavType type) async {
    state = const AsyncValue.loading();
    final result = await watchlistFavUsecase.getWatchFavList(type: type);
    state = AsyncValue.data(result);
    return state;
  }

  Future<void> clearAllWatchFavList(WatchlistFavType type) async {
    state = const AsyncValue.loading();
    await watchlistFavUsecase.clearAll(type: type);
    getWatchFavList(type);
  }

}

final watchlistFavProvider = StateNotifierProvider.autoDispose<WatchlistFavNotifier, AsyncValue<List<WatchlistFavEntity>>>((ref) {
  return WatchlistFavNotifier(ref.read(watchFavUseCaseProvider));
});
// final watchlistFavProvider = FutureProvider.autoDispose.family<List<WatchlistFavEntity>, WatchlistFavType>((ref, type) async {
//   final watchFavUseCase = ref.read(watchFavUseCaseProvider);
//   return await watchFavUseCase.getWatchFavList(type: type);
// });