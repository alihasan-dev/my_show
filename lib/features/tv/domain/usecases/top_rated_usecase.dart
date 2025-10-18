import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/tv_repository_imp.dart';
import '../entities/trending_tvshow_entity.dart';
import '../repository/tv_repository.dart';

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