import 'package:dartz/dartz.dart';
import 'package:riverpod/riverpod.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/recent_search_repo_imp.dart';
import '../entities/recent_search_entity.dart';
import '../repository/recent_search_repository.dart';

class RecentSearchUseCase {

  final RecentSearchRepository recentSearchRepository;

  RecentSearchUseCase(this.recentSearchRepository);

  Future<List<RecentSearchEntity>> getRecentSearches() async {
    return await recentSearchRepository.getRecentSearches();
  }

  Future<void> save(RecentSearchEntity entity) async {
    recentSearchRepository.saveSearch(entity);
  }

  Future<void> removeSearch({required String id}) async {
    await recentSearchRepository.removeSearch(id);
  }

  Future<void> clearRecentSearch() async {
    await recentSearchRepository.clearSearches();
  }
}


final recentSearchUseCaseProvider = Provider<RecentSearchUseCase>((ref) {
  return RecentSearchUseCase(ref.read(recentSearchRepoProvider));
});