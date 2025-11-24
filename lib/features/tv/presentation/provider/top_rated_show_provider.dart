import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/features/tv/domain/entities/trending_tvshow_entity.dart';
import '/features/tv/domain/usecases/top_rated_usecase.dart';

final topRatedShowProvider = FutureProvider.autoDispose<TrendingTVShowEntity>((ref) async {
  final topRatedUseCase = ref.read(topRatedUasCaseProvider);
  final result = await topRatedUseCase.topRatedShows();
  return result.fold(
    (left) => throw left, 
    (right) => right
  );
});