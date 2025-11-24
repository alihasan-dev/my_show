import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/features/movie_details/domain/entities/cast_entity.dart';
import '../../domain/usecases/movie_cast_usecase.dart';

final movieCastProvider = FutureProvider.autoDispose.family<MovieCastEntity, ({String id, String type})>((ref, param) async {
  final movieCastUsercaseProvider = ref.read(movieCastUserCaseProvider);
  final response = await movieCastUsercaseProvider.movieCasts(id: param.id, type: param.type);
  return response.fold(
    (left) => throw left, 
    (right) => right
  );
}); 