import 'package:dartz/dartz.dart';
import 'package:riverpod/riverpod.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/movie_details_repo_imp.dart';
import '../entities/release_dates_entity.dart';
import '../repository/movie_details_repository.dart';

class ReleaseDatesUsecase {

  final MovieDetailsRepository movieDetailsRepository;

  ReleaseDatesUsecase(this.movieDetailsRepository);

  Future<Either<CustomFailureException, ReleaseDatesEntity>> releaseDates({required String id}) async {
    return await movieDetailsRepository.releaseDates(id: id);
  }
}

final releaseDatesUseCaseProvider = Provider<ReleaseDatesUsecase>((ref) {
  final movieDetailRepoProvider = ref.read(movieDetailsRepoProvider);
  return ReleaseDatesUsecase(movieDetailRepoProvider);
});