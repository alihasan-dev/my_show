import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../features/movie_details/domain/entities/episode_details_entity.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/movie_details_repo_imp.dart';
import '../entities/season_details_entity.dart';
import '../repository/movie_details_repository.dart';

class TvSeasonEpisodeDetailsUsecase {

  final MovieDetailsRepository movieDetailsRepository;

  TvSeasonEpisodeDetailsUsecase(this.movieDetailsRepository);

  Future<Either<CustomFailureException, SeasonDetailsEntity>> seasonDetails({required String id, required String seasonNumber}) async {
    return await movieDetailsRepository.seasonDetails(id: id, seasonNumber: seasonNumber);
  }

  Future<Either<CustomFailureException, EpisodeDetailsEntity>> episodeDetails({required String id, required String seasonNumber, required String episodeNumber}) async {
    return await movieDetailsRepository.episodeDetails(id: id, seasonNumber: seasonNumber, episodeNumber: episodeNumber);
  }
}

final tvSeasonEpisodeDetailsUseCaseProvider = Provider<TvSeasonEpisodeDetailsUsecase>((ref) {
  final movieDetailRepoProvider = ref.read(movieDetailsRepoProvider);
  return TvSeasonEpisodeDetailsUsecase(movieDetailRepoProvider);
});