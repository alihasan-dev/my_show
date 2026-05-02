import 'package:riverpod/riverpod.dart';
import '../../domain/entities/movie_award_entity.dart';
import '../../domain/usecases/movie_awards_usecase.dart';

final movieAwardProvider = FutureProvider.autoDispose.family<MovieAwardEntity, String>((ref, id) async {
  final movieAwardsUsecaseProvider = ref.read(movieAwardsUseCaseProvider);
  final response = await movieAwardsUsecaseProvider.movieAwards(id: id);
  return response.fold(
    (left) => throw left, 
    (right) => right
  );
});