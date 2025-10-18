import 'package:dartz/dartz.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/profile_repository_imp.dart';
import '../entities/movie_credit_entity.dart';
import '../repository/profile_repository.dart';

class CreditTvUsecase {

  final ProfileRepository profileRepository;

  CreditTvUsecase(this.profileRepository);

  Future<Either<CustomFailureException, MovieCreditEntity>> creditTV({required String userId}) async {
    return await profileRepository.creditMovies(userId: userId, type: 'tv_credits');
  }
}

final creditTvUseCaseProvider = Provider<CreditTvUsecase>((ref) {
  final profileRepo = ref.read(profileRepoProvider);
  return CreditTvUsecase(profileRepo);
});