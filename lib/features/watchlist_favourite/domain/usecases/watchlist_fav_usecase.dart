import 'package:riverpod/riverpod.dart';
import '../../../../core/utils/app_enums.dart';
import '../../data/repository/watchlist_favourite_repository_imp.dart';
import '../entities/watchlist_fav_entity.dart';
import '../repository/watchlist_favourite_repository.dart';

class WatchlistFavUsecase {

  final WatchlistFavRepository watchlistFavRepository;

  WatchlistFavUsecase(this.watchlistFavRepository);

  Future<List<WatchlistFavEntity>> getWatchFavList({required WatchlistFavType type}) async {
    return await watchlistFavRepository.getWatchFavList(type: type);
  }
}

final watchFavUseCaseProvider = Provider<WatchlistFavUsecase>((ref) {
  final watchFavRepoProvider = ref.read(watchlistFavRepoProvider);
  return WatchlistFavUsecase(watchFavRepoProvider);
});