import 'package:dartz/dartz.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/movie_repository_imp.dart';
import '../entities/trending_movie_entity.dart';
import '../repository/movie_repository.dart';

class UpcomingMovieUsecase {

  final DashboardRepository dashboardRepository;

  UpcomingMovieUsecase(this.dashboardRepository);

  Future<Either<CustomFailureException, TrendingMoviesEntity>> upcomingMovies() async {
    return await dashboardRepository.upcomingMovies(page: 1);
  }
}

final upcomingMovieUseCaseProvider = Provider<UpcomingMovieUsecase>((ref) {
  return UpcomingMovieUsecase(ref.read(dashboardRepositoryProvider));
});