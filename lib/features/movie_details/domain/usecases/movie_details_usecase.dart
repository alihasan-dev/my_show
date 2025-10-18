import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/movie_details_repo_imp.dart';
import '../entities/movie_details_entity.dart';
import '../repository/movie_details_repository.dart';


class MovieDetailsUsecase {

  final MovieDetailsRepository movieDetailsRepository;

  MovieDetailsUsecase(this.movieDetailsRepository);

  Future<Either<CustomFailureException, MovieDetailEntity>> movieDetails({required String id, required String type}) async {
    return await movieDetailsRepository.movieDetails(id: id, type: type);
  }
}

final movieDetailsUserCaseProvider = Provider<MovieDetailsUsecase>((ref) {
  final dashboardRepoProvider = ref.read(movieDetailsRepoProvider);
  return MovieDetailsUsecase(dashboardRepoProvider);
});