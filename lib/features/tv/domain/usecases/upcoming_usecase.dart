import 'package:dartz/dartz.dart';
import '/core/utils/custom_exception.dart';
import '/features/tv/data/repository/tv_repository_imp.dart';
import '/features/tv/domain/entities/trending_tvshow_entity.dart';
import '/features/tv/domain/repository/tv_repository.dart';
import 'package:riverpod/riverpod.dart';

class UpcomingUsecase {

  final TvRepository tvRepository;

  UpcomingUsecase(this.tvRepository);

  Future<Either<CustomFailureException, TrendingTVShowEntity>> upcomingShows() async {
    return await tvRepository.upcomingShows();
  }
}

final upcomingShowUseCaseProvider = Provider<UpcomingUsecase>((ref) {
  return UpcomingUsecase(ref.read(tvRepositoryProvider));
});