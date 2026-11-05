import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/repository/movie_repository_imp.dart';
import '/features/movie/domain/repository/movie_repository.dart';
import '/features/movie/domain/entities/trending_movie_entity.dart';
class DashboardUsecase {

  final DashboardRepository dashboardRepository;

  DashboardUsecase(this.dashboardRepository);

  Future<Either<String, TrendingMoviesEntity>> getTrendingMovies() async {
    return await dashboardRepository.trendingMovies();
  }
}

final dashboardUserCaseProvider = Provider<DashboardUsecase>((ref) {
  final dashboardRepoProvider = ref.read(dashboardRepositoryProvider);
  return DashboardUsecase(dashboardRepoProvider);
});