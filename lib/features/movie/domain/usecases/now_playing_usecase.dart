import 'package:dartz/dartz.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/movie_repository_imp.dart';
import '../entities/trending_movie_entity.dart';
import '../repository/movie_repository.dart';

class NowPlayingUsecase {

  final DashboardRepository dashboardRepository;

  NowPlayingUsecase(this.dashboardRepository);

  Future<Either<CustomFailureException, TrendingMoviesEntity>> nowPlaying() async {
    return await dashboardRepository.nowPlayingMovies(page: 1);
  }
}

final nowPlayingUseCaseProvider = Provider<NowPlayingUsecase>((ref) {
  return NowPlayingUsecase(ref.read(dashboardRepositoryProvider));
});