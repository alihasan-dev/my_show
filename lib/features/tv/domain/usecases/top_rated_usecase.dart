import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/core/utils/custom_exception.dart';
import '/features/tv/data/repository/tv_repository_imp.dart';
import '/features/tv/domain/entities/trending_tvshow_entity.dart';
import '/features/tv/domain/repository/tv_repository.dart';

class TopRatedShowUsecase {

  final TvRepository tvRepository;

  TopRatedShowUsecase(this.tvRepository);

  Future<Either<CustomFailureException, TrendingTVShowEntity>> topRatedShows() async {
    return await tvRepository.topRatedShows();
  }
}

final topRatedUasCaseProvider = Provider<TopRatedShowUsecase>((ref) {
  return TopRatedShowUsecase(ref.read(tvRepositoryProvider));
});