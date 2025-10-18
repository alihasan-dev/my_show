import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/tv_repository_imp.dart';
import '../entities/trending_tvshow_entity.dart';
import '../repository/tv_repository.dart';

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