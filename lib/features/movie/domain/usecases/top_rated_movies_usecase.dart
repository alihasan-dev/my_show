import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/movie_repository_imp.dart';
import '../entities/trending_movie_entity.dart';
import '../repository/movie_repository.dart';

class TopRatedMoviesUsecase {

  final DashboardRepository dashboardRepository;

  TopRatedMoviesUsecase(this.dashboardRepository);

  Future<Either<CustomFailureException, TrendingMoviesEntity>> topRatedMovies() async {
    return await dashboardRepository.topRatedMovies(page: 1);
  }
}

final topRatedMovieUseCaseProvider = Provider<TopRatedMoviesUsecase>((ref) {
  return TopRatedMoviesUsecase(ref.read(dashboardRepositoryProvider));
});