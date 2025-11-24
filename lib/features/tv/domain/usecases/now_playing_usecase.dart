import 'package:dartz/dartz.dart';
import '/features/tv/domain/repository/tv_repository.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/tv_repository_imp.dart';
import '../entities/trending_tvshow_entity.dart';

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