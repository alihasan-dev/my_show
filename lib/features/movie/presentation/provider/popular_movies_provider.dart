import '/features/movie/domain/entities/trending_movie_entity.dart';
import '/features/movie/domain/usecases/popular_movies_usecase.dart';
import 'package:riverpod/riverpod.dart';

final popularMoviesProvider = FutureProvider.autoDispose<TrendingMoviesEntity>((ref) async {
  ref.keepAlive();
  final popularMoviesUseCase = ref.read(popularMovieUseCaseProvider);
  final response = await popularMoviesUseCase.popularMovies();
  return response.fold(
    (left) => throw left,
    (right) => right
  );
});