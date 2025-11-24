import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/features/tv/domain/entities/trending_tvshow_entity.dart';

import '../../domain/usecases/popular_show_usecase.dart';

final popularShowProvider = FutureProvider.autoDispose<TrendingTVShowEntity>((ref) async {
  ref.keepAlive();
  final useCaseProvider = ref.read(popularShowUseCaseProvider);
  final result = await useCaseProvider.popularShows();
  return result.fold(
    (left) => throw left, 
    (right) => right
  );
});