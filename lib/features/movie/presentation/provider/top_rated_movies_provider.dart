import 'package:riverpod/riverpod.dart';

import '../../domain/entities/trending_movie_entity.dart';
import '../../domain/usecases/top_rated_movies_usecase.dart';

final topRatedMoviesProvider = FutureProvider.autoDispose<TrendingMoviesEntity>((ref) async {
  ref.keepAlive();
  final popularMoviesUseCase = ref.read(topRatedMovieUseCaseProvider);
  final response = await popularMoviesUseCase.topRatedMovies();
  return response.fold(
    (left) => throw left,
    (right) => right
  );
});