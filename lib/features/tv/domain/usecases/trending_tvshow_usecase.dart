import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/tv_repository_imp.dart';
import '../entities/trending_tvshow_entity.dart';
import '../repository/tv_repository.dart';

class TrendingTvshowUsecase {

  final TvRepository tvRepository;

  TrendingTvshowUsecase(this.tvRepository);

  Future<Either<CustomFailureException, TrendingTVShowEntity>> getTredingShow() async {
    return await tvRepository.trendingTVShow();
  }
  
}

final trendingTVShowUserCaseProvider = Provider<TrendingTvshowUsecase>((ref) {
  return TrendingTvshowUsecase(ref.read(tvRepositoryProvider));
});