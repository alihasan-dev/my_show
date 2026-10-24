import '../entities/recent_search_entity.dart';

abstract interface class RecentSearchRepository {
  Future<List<RecentSearchEntity>> getRecentSearches();
  Future<void> saveSearch(RecentSearchEntity entity);
  Future<void> removeSearch(String id);
  Future<void> clearSearches();
}