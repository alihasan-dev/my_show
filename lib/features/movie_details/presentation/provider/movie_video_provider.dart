import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/entities/video_entity.dart';
import '../../domain/usecases/movie_video_usecase.dart';

final movieVideoProvider = FutureProvider.autoDispose.family<VideoEntity, ({String id, String type})>((ref, param) async {
  final movieVideoUsecaseProvider = ref.read(movieVideoUseCaseProvider);
  final response = await movieVideoUsecaseProvider.movieVideo(id: param.id, type: param.type);
  return response.fold(
    (left) => throw left, 
    (right) => right
  );
}); 