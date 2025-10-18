import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/entities/trending_movie_entity.dart';
import '../../domain/usecases/trending_movies_usecase.dart';

final trendingMoviesProvider = FutureProvider.autoDispose<TrendingMoviesEntity>((ref) async {
  ref.keepAlive();
  final trendingMovieUserCaseProvider = ref.read(dashboardUserCaseProvider);
  final response = await trendingMovieUserCaseProvider.getTrendingMovies();
  return response.fold(
    (left) => throw Exception('No internet connection'), 
    (right) => right
  );
});