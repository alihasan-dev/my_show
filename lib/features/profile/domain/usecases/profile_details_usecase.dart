import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/profile_repository_imp.dart';
import '../entities/profile_details_entity.dart';
import '../repository/profile_repository.dart';

class ProfileDetailsUsecase {

  final ProfileRepository profileRepository;

  ProfileDetailsUsecase(this.profileRepository);

  Future<Either<CustomFailureException, ProfileDetailsEntity>> profileDetails({required String userId}) async {
    return await profileRepository.profileDetails(userId: userId);
  }

}

final profileDetailsUseCaseProvider = Provider<ProfileDetailsUsecase>((ref) {
  return ProfileDetailsUsecase(ref.read(profileRepoProvider));
});