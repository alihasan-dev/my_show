import 'package:dartz/dartz.dart';
import '/core/utils/custom_exception.dart';
import '/features/tv/data/repository/tv_repository_imp.dart';
import '/features/tv/domain/entities/trending_tvshow_entity.dart';
import '/features/tv/domain/repository/tv_repository.dart';
import 'package:riverpod/riverpod.dart';

class PopularShowUsecase {

  final TvRepository tvRepository;

  PopularShowUsecase(this.tvRepository);

  Future<Either<CustomFailureException, TrendingTVShowEntity>> popularShows() async {
    return await tvRepository.popularShow();
  }

}

final popularShowUseCaseProvider = Provider<PopularShowUsecase>((ref) {
  return PopularShowUsecase(ref.read(tvRepositoryProvider));
});