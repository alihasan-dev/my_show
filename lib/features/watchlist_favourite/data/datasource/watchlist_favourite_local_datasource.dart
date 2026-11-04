import 'dart:convert';
import 'package:riverpod/riverpod.dart';
import '../models/watchlist_favourite_model.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/storage/local_storage.dart';
import '../../../../core/storage/storage_provider.dart';
import '../../../../core/storage/shared_pref_keys.dart';
abstract interface class WatchlistFavLocalDataSource {

  Future<List<WatchlistFavouriteModel>> getWatchFavList({required WatchlistFavType type});
  Future<void> clearAll({required WatchlistFavType type});
}

class WatchlistFavLocalDataSourceImp implements WatchlistFavLocalDataSource {

  final LocalStorage localStorage;
  WatchlistFavLocalDataSourceImp(this.localStorage);
  
  @override
  Future<List<WatchlistFavouriteModel>> getWatchFavList({required WatchlistFavType type}) async {
    final savedData = List<String>.from(localStorage.getStringList(
      type == WatchlistFavType.favourite
      ? SharedPrefKeys.favouriteList
      : SharedPrefKeys.watchlist
    ));
    return savedData.map((item) {
      return WatchlistFavouriteModel.fromJson(jsonDecode(item));
    }).toList();
  }

  @override
  Future<void> clearAll({required WatchlistFavType type}) async {
    await localStorage.remove(
      type == WatchlistFavType.favourite
      ? SharedPrefKeys.favouriteList
      : SharedPrefKeys.watchlist
    );
  }

}

final watchlistFavLocalDataSourceProvider = Provider<WatchlistFavLocalDataSource>((ref) {
  return WatchlistFavLocalDataSourceImp(ref.read(localStorageProvider));
});