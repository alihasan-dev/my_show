import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/features/profile/domain/usecases/credit_movie_usecase.dart';

import '../../domain/entities/movie_credit_entity.dart';

final movieCreditDataProvider = FutureProvider.autoDispose.family<MovieCreditEntity, String>((ref, userId) async {
  final creditMoviesData = ref.read(creditMovieUseCaseProvider);
  final response = await creditMoviesData.creditMovie(userId: userId);
  return response.fold(
    (left) => throw left, 
    (right) => right
  );
});