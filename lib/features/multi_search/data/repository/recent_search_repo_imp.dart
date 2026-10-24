import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_show/features/multi_search/domain/entities/recent_search_entity.dart';
import 'package:my_show/features/multi_search/domain/repository/recent_search_repository.dart';

import '../datasource/recent_search_local_datesource.dart';
import '../models/recent_search_model.dart';

class RecentSearchRepoImp implements RecentSearchRepository {

  final RecentSearchLocalDataSource recentSearchLocalDataSource;
  
  RecentSearchRepoImp(this.recentSearchLocalDataSource);

  @override
  Future<void> clearSearches() async {
    await recentSearchLocalDataSource.clear();
  }

  @override
  Future<List<RecentSearchEntity>> getRecentSearches() async {
    final recentSearchModel = await recentSearchLocalDataSource.get();
    return recentSearchModel.map((item) => item.toEntity()).toList();
  }

  @override
  Future<void> removeSearch(String id) async {
    await recentSearchLocalDataSource.remove(id);
  }

  @override
  Future<void> saveSearch(RecentSearchEntity entity) async {
    final model = RecentSearchModel.fromEntity(entity);
    recentSearchLocalDataSource.save(model);
  }

}

final recentSearchRepoProvider = Provider<RecentSearchRepository>((ref) {
  final recentSearchLocalDataSource = ref.read(recentSearchLocalDataSourceProvider);
  return RecentSearchRepoImp(recentSearchLocalDataSource);
});