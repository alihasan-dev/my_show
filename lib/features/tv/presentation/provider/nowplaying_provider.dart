import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/trending_tvshow_entity.dart';
import '../../domain/usecases/now_playing_usecase.dart';

final nowPlayingProvider = FutureProvider.autoDispose<TrendingTVShowEntity>((ref) async {
  ref.keepAlive();
  final useCaseProvider = ref.read(nowPlayingTVShowUserCaseProvider);
  final result = await useCaseProvider.getNowPlaying();
  return result.fold(
    (left) => throw left, 
    (right) => right
  );
});