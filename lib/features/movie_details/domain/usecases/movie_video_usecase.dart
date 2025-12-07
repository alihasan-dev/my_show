import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../entities/video_entity.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/movie_details_repo_imp.dart';
import '../repository/movie_details_repository.dart';

class MovieVideoUsecase {

  final MovieDetailsRepository movieDetailsRepository;

  MovieVideoUsecase(this.movieDetailsRepository);

  Future<Either<CustomFailureException, VideoEntity>> movieVideo({required String id, required String type}) async {
    return await movieDetailsRepository.movieVideo(id: id, type: type);
  }
}

final movieVideoUseCaseProvider = Provider<MovieVideoUsecase>((ref) {
  final dashboardRepoProvider = ref.read(movieDetailsRepoProvider);
  return MovieVideoUsecase(dashboardRepoProvider);
});