import '/features/movie_details/domain/entities/movie_keywords_entity.dart';
import '/features/movie_details/domain/usecases/movie_keywords_usecase.dart';
import 'package:riverpod/riverpod.dart';

final movieKeywordProvider = FutureProvider.autoDispose.family<MovieKeywordsEntity, ({String id, String type})>((ref, param) async {
  final movieKeywordUsecaseProvider = ref.read(movieKeywordUseCaseProvider);
  final response = await movieKeywordUsecaseProvider.movieKeywords(id: param.id, type: param.type);
  return response.fold(
    (left) => throw left, 
    (right) => right
  );
});