import 'package:riverpod/riverpod.dart';
import '../../domain/entities/trending_movie_entity.dart';
import '/features/movie/domain/usecases/now_playing_usecase.dart';

final nowPlayingProvider = FutureProvider.autoDispose<TrendingMoviesEntity>((ref) async {
  ref.keepAlive();
  final nowPlayingUseCase = ref.read(nowPlayingUseCaseProvider);
  final response = await nowPlayingUseCase.nowPlaying();
  return response.fold(
    (left) => throw left,
    (right) => right
  );
});