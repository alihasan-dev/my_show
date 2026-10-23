import '../../../../core/utils/app_enums.dart';
import '../entities/watchlist_fav_entity.dart';

abstract interface class WatchlistFavRepository {

  Future<List<WatchlistFavEntity>> getWatchFavList({required WatchlistFavType type});

}