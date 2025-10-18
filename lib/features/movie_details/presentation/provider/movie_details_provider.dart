import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../features/movie_details/domain/usecases/movie_details_usecase.dart';
import '../../domain/entities/movie_details_entity.dart';

final movieDetailsProvider = FutureProvider.autoDispose.family<MovieDetailEntity, ({String id, String type})>((ref, param) async {
  final movieDetailsUsercaseProvider = ref.read(movieDetailsUserCaseProvider);
  final response = await movieDetailsUsercaseProvider.movieDetails(id: param.id, type: param.type);
  return response.fold(
    (left) => throw left, 
    (right) => right
  );
});