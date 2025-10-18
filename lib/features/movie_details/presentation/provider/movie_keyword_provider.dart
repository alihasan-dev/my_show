import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/entities/movie_keywords_entity.dart';
import '../../domain/usecases/movie_keywords_usecase.dart';

final movieKeywordProvider = FutureProvider.autoDispose.family<MovieKeywordsEntity, ({String id, String type})>((ref, param) async {
  final movieKeywordUsecaseProvider = ref.read(movieKeywordUseCaseProvider);
  final response = await movieKeywordUsecaseProvider.movieKeywords(id: param.id, type: param.type);
  return response.fold(
    (left) => throw left, 
    (right) => right
  );
});