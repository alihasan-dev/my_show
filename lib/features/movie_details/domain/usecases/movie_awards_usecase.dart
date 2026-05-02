import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../entities/movie_award_entity.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/movie_details_repo_imp.dart';
import '../repository/movie_details_repository.dart';

class MovieAwardsUsecase {

  final MovieDetailsRepository movieDetailsRepository;

  MovieAwardsUsecase(this.movieDetailsRepository);

  Future<Either<CustomFailureException, MovieAwardEntity>> movieAwards({required String id}) async {
    return await movieDetailsRepository.movieAwards(id: id);
  }
}

final movieAwardsUseCaseProvider = Provider<MovieAwardsUsecase>((ref) {
  final dashboardRepoProvider = ref.read(movieDetailsRepoProvider);
  return MovieAwardsUsecase(dashboardRepoProvider);
});