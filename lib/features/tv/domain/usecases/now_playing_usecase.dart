import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/tv_repository_imp.dart';
import '../entities/trending_tvshow_entity.dart';
import '../repository/tv_repository.dart';

class NowPlayingUsecase {

  final TvRepository tvRepository;
  NowPlayingUsecase(this.tvRepository);

  Future<Either<CustomFailureException, TrendingTVShowEntity>> getNowPlaying() async {
    return await tvRepository.getNowPlaying();
  }
}

final nowPlayingTVShowUserCaseProvider = Provider<NowPlayingUsecase>((ref) {
  return NowPlayingUsecase(ref.read(tvRepositoryProvider));
});