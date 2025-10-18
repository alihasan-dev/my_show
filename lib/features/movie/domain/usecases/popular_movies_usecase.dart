import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/movie_repository_imp.dart';
import '../entities/trending_movie_entity.dart';
import '../repository/movie_repository.dart';

class PopularMoviesUsecase {

  final DashboardRepository dashboardRepository;

  PopularMoviesUsecase(this.dashboardRepository);

  Future<Either<CustomFailureException, TrendingMoviesEntity>> popularMovies() async {
    return await dashboardRepository.popularMovies(page: 1);
  }
}

final popularMovieUseCaseProvider = Provider<PopularMoviesUsecase>((ref) {
  return PopularMoviesUsecase(ref.read(dashboardRepositoryProvider));
});