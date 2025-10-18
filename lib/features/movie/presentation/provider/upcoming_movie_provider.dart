import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/entities/trending_movie_entity.dart';
import '../../domain/usecases/upcoming_movie_usecase.dart';

final upcomoingMovieProvider = FutureProvider.autoDispose<TrendingMoviesEntity>((ref) async {
  ref.keepAlive();
  final upcomingMovieUseCase = ref.read(upcomingMovieUseCaseProvider);
  final response = await upcomingMovieUseCase.upcomingMovies();
  return response.fold(
    (left) => throw left,
    (right) => right
  );
});