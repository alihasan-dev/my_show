import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/movie_details_repo_imp.dart';
import '../entities/cast_entity.dart';
import '../repository/movie_details_repository.dart';

class MovieCastUsecase {

  final MovieDetailsRepository movieDetailsRepository;

  MovieCastUsecase(this.movieDetailsRepository);

  Future<Either<CustomFailureException, MovieCastEntity>> movieCasts({required String id, required String type}) async {
    return await movieDetailsRepository.movieCast(id: id, type: type);
  }
}

final movieCastUserCaseProvider = Provider<MovieCastUsecase>((ref) {
  final dashboardRepoProvider = ref.read(movieDetailsRepoProvider);
  return MovieCastUsecase(dashboardRepoProvider);
});