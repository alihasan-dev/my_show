
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/entities/trending_movie_entity.dart';
import '../../domain/usecases/popular_movies_usecase.dart';

final popularMoviesProvider = FutureProvider.autoDispose<TrendingMoviesEntity>((ref) async {
  ref.keepAlive();
  final popularMoviesUseCase = ref.read(popularMovieUseCaseProvider);
  final response = await popularMoviesUseCase.popularMovies();
  return response.fold(
    (left) => throw left,
    (right) => right
  );
});