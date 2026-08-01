import 'package:my_show/core/utils/app_extension_method.dart';
import 'package:riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';
import '../../domain/entities/recent_search_entity.dart';
import '../../domain/usecases/recent_search_usecase.dart';

class RecentSearchNotifier extends StateNotifier<AsyncValue<List<RecentSearchEntity>>> {

  final RecentSearchUseCase recentSearchUsecase;

  RecentSearchNotifier(this.recentSearchUsecase) : super(AsyncValue.loading());


  Future<void> saveSearch({required RecentSearchEntity entity}) async {
    await recentSearchUsecase.save(entity);
  }

  Future<AsyncValue<List<RecentSearchEntity>>> getRecentSearch() async {
    state = const AsyncValue.loading();
    final result = await recentSearchUsecase.getRecentSearches();
    state = AsyncValue.data(result);
    return state;
  }

  Future<void> removeSearch({required String id}) async {
    if (id.isBlank) return;
    await recentSearchUsecase.removeSearch(id: id);
    getRecentSearch();
  }

  Future<void> clearRecentSearch() async {
    await recentSearchUsecase.clearRecentSearch();
    getRecentSearch();
  }

  bool get isRecentSearchAvailable {
    return (state.value ?? []).isNotEmpty;
  }
}

final recentSearchProvider = StateNotifierProvider.autoDispose<RecentSearchNotifier, AsyncValue<List<RecentSearchEntity>>>((ref) {
  return RecentSearchNotifier(ref.read(recentSearchUseCaseProvider));
});