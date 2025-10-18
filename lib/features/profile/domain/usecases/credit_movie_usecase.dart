import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/profile_repository_imp.dart';
import '../entities/movie_credit_entity.dart';
import '../repository/profile_repository.dart';

class CreditMovieUsecase {

  final ProfileRepository profileRepository;

  CreditMovieUsecase(this.profileRepository);

  Future<Either<CustomFailureException, MovieCreditEntity>> creditMovie({required String userId}) async {
    return await profileRepository.creditMovies(userId: userId, type: 'movie_credits');
  }
}

final creditMovieUseCaseProvider = Provider<CreditMovieUsecase>((ref) {
  final profileRepo = ref.read(profileRepoProvider);
  return CreditMovieUsecase(profileRepo);
});