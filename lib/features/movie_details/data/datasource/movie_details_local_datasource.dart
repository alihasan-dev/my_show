import 'dart:convert';
import 'dart:developer';
import 'package:riverpod/riverpod.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/storage/local_storage.dart';
import '../../../../core/storage/shared_pref_keys.dart';
import '../../../../core/storage/storage_provider.dart';
import '../models/movie_watchlist_model.dart';

abstract interface class MovieDetailsLocalDataSource {

  Future<MovieWatchlistModel?> getWatchlist(String id);
  Future<void> saveWatchlist(MovieWatchlistModel model);
  Future<void> removeWatchlist(String id);
  Future<MovieWatchlistModel?> getFavourite(String id);
  Future<void> saveFavourite(MovieWatchlistModel model);
  Future<void> removeFavourite(String id);
}


class MovieDetailsLocalDatesourceImp implements MovieDetailsLocalDataSource {

  final LocalStorage localStorage;

  MovieDetailsLocalDatesourceImp(this.localStorage);

  @override
  Future<MovieWatchlistModel?> getWatchlist(String id) async {
    try {
      final savedWatchList = List<String>.from(localStorage.getStringList(SharedPrefKeys.watchlist));
      if (savedWatchList.isEmpty) return null;
      final item = savedWatchList.firstWhere((item) => jsonDecode(item)['id'] == id, orElse:() => '');
      return item.isBlank ? null : MovieWatchlistModel.fromJson(jsonDecode(item));
    } catch(_) {
      return null;
    }
  }

  @override
  Future<void> removeWatchlist(String id) async {
    final savedSearch = List<String>.from(localStorage.getStringList(SharedPrefKeys.watchlist));
    savedSearch.removeWhere((item) {
      final map = jsonDecode(item);
      return map['id'] == id;
    });
    localStorage.saveStringList(SharedPrefKeys.watchlist, savedSearch);
  }

  @override
  Future<void> saveWatchlist(MovieWatchlistModel model) async {
    final savedSearchData = List<String>.from(localStorage.getStringList(SharedPrefKeys.watchlist));
    // Check if duplicate exists
    final isDuplicate = savedSearchData.any((item) {
      final map = jsonDecode(item) as Map<String, dynamic>;
      return map['id'] == model.id;
    });

    if (isDuplicate) {
      log('Watchlist Data Source ::: found duplicate');
      return;
    }
    // Add new item & persist
    savedSearchData.add(jsonEncode(model.toJson()));
    localStorage.saveStringList(SharedPrefKeys.watchlist, savedSearchData);
  }

  @override
  Future<MovieWatchlistModel?> getFavourite(String id) async {
    try {
      final savedWatchList = List<String>.from(localStorage.getStringList(SharedPrefKeys.favouriteList));
      if (savedWatchList.isEmpty) return null;
      final item = savedWatchList.firstWhere((item) => jsonDecode(item)['id'] == id, orElse:() => '');
      return item.isBlank ? null : MovieWatchlistModel.fromJson(jsonDecode(item));
    } catch(_) {
      return null;
    }
  }

  @override
  Future<void> removeFavourite(String id) async {
    final savedSearch = List<String>.from(localStorage.getStringList(SharedPrefKeys.favouriteList));
    savedSearch.removeWhere((item) {
      final map = jsonDecode(item);
      return map['id'] == id;
    });
    localStorage.saveStringList(SharedPrefKeys.favouriteList, savedSearch);
  }

  @override
  Future<void> saveFavourite(MovieWatchlistModel model) async {
    final savedSearchData = List<String>.from(localStorage.getStringList(SharedPrefKeys.favouriteList));
    // Check if duplicate exists
    final isDuplicate = savedSearchData.any((item) {
      final map = jsonDecode(item) as Map<String, dynamic>;
      return map['id'] == model.id;
    });

    if (isDuplicate) {
      log('Watchlist Data Source ::: found duplicate');
      return;
    }
    // Add new item & persist
    savedSearchData.add(jsonEncode(model.toJson()));
    localStorage.saveStringList(SharedPrefKeys.favouriteList, savedSearchData);
  }

}

final movieDetailsLocalDataSourceProvider = Provider<MovieDetailsLocalDataSource>((ref) {
  return MovieDetailsLocalDatesourceImp(ref.read(localStorageProvider));
});