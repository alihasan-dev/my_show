import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/entities/trending_tvshow_entity.dart';
import '../../domain/usecases/upcoming_usecase.dart';

final upcomingShowProvider = FutureProvider.autoDispose<TrendingTVShowEntity>((ref) async {
  final useCaseProvider = ref.read(upcomingShowUseCaseProvider);
  final result = await useCaseProvider.upcomingShows();
  return result.fold(
    (left) => throw left,
    (right) => right
  );
});