import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/features/movie/domain/entities/trending_movie_entity.dart';

import '../../domain/usecases/movie_recommentation_usecase.dart';

final movieRecommentationProvider = FutureProvider.autoDispose.family<TrendingMoviesEntity, ({String id, String type})>((ref, param) async {
  final movieRecommendationProvider = ref.read(movieRecommendationUseCaseProvider);
  final response = await movieRecommendationProvider.movieRecommendation(id: param.id, type: param.type);
  return response.fold(
    (left) => throw left, 
    (right) => right
  );
});