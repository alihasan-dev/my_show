import 'dart:convert';
import 'package:my_show/core/storage/local_storage.dart';
import 'package:my_show/core/storage/storage_provider.dart';
import '../../../../core/storage/shared_pref_keys.dart';
import '../../../../core/utils/app_enums.dart';
import '../models/watchlist_favourite_model.dart';
import 'package:riverpod/riverpod.dart';

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