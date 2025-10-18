import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/tv_repository_imp.dart';
import '../entities/trending_tvshow_entity.dart';
import '../repository/tv_repository.dart';

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