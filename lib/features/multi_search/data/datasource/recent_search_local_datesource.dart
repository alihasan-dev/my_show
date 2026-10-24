import 'dart:convert';
import 'dart:developer';

import 'package:my_show/core/storage/local_storage.dart';
import 'package:my_show/core/storage/shared_pref_keys.dart';
import 'package:riverpod/riverpod.dart';
import '../../../../core/storage/storage_provider.dart';
import '../models/recent_search_model.dart';

abstract interface class RecentSearchLocalDataSource {

  Future<List<RecentSearchModel>> get();

  Future<void> save(RecentSearchModel model);

  Future<void> remove(String id);

  Future<void> clear();
}

class RecentSearchLocalDatesourceImp implements RecentSearchLocalDataSource {
  final LocalStorage localStorage;

  RecentSearchLocalDatesourceImp(this.localStorage);


  @override
  Future<void> clear() async{
    await localStorage.remove(SharedPrefKeys.recentSearch);
  }

  @override
  Future<List<RecentSearchModel>> get() async {
    final savedSearch = List<String>.from(localStorage.getStringList(SharedPrefKeys.recentSearch));
    return savedSearch.map((item) {
      return RecentSearchModel.fromJson(jsonDecode(item));
    }).toList();
  }

  @override
  Future<void> remove(String id) async {
    final savedSearch = List<String>.from(localStorage.getStringList(SharedPrefKeys.recentSearch));
    savedSearch.removeWhere((item) {
      final map = jsonDecode(item);
      return map['id'] == id;
    });
    localStorage.saveStringList(SharedPrefKeys.recentSearch, savedSearch);
  }

  @override
  Future<void> save(RecentSearchModel model) async {
    final savedSearchData = List<String>.from(localStorage.getStringList(SharedPrefKeys.recentSearch));
    // Check if duplicate exists
    final isDuplicate = savedSearchData.any((item) {
      final map = jsonDecode(item) as Map<String, dynamic>;
      return map['id'] == model.id;
    });

    if (isDuplicate) {
      log('Recent Search Data Source ::: found duplicate');
      return;
    }
    // Add new item & persist
    savedSearchData.add(jsonEncode(model.toJson()));
    localStorage.saveStringList(SharedPrefKeys.recentSearch, savedSearchData);
  }

}

final recentSearchLocalDataSourceProvider = Provider<RecentSearchLocalDataSource>((ref) {
  return RecentSearchLocalDatesourceImp(ref.read(localStorageProvider));
});

