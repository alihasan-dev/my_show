import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../../movie/domain/entities/trending_movie_entity.dart';
import '../../data/repository/movie_details_repo_imp.dart';
import '../repository/movie_details_repository.dart';

class MovieRecommentationUsecase {

  final MovieDetailsRepository movieDetailsRepository;

  MovieRecommentationUsecase(this.movieDetailsRepository);

  Future<Either<CustomFailureException, TrendingMoviesEntity>> movieRecommendation({required String id, required String type}) async {
    return await movieDetailsRepository.movieRecommendation(id: id, type: type);
  }
}

final movieRecommendationUseCaseProvider = Provider<MovieRecommentationUsecase>((ref) {
  final movieDetailRepoProvider = ref.read(movieDetailsRepoProvider);
  return MovieRecommentationUsecase(movieDetailRepoProvider);
});