import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/usecases/trending_tvshow_usecase.dart';

final trendingTvShowProvider = FutureProvider.autoDispose((ref) async {
  ref.keepAlive();
  final useCaseProvider = ref.read(trendingTVShowUserCaseProvider);
  final showData = await useCaseProvider.getTredingShow();
  return showData.fold(
    (left) => throw left,
    (right) => right
  );
});