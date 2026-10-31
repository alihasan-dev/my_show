import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_show/features/movie_details/domain/entities/episode_details_entity.dart';
import 'package:my_show/features/movie_details/domain/usecases/tv_season_details_usecase.dart';
import 'package:my_show/features/movie_details/presentation/provider/params/episode_details_param.dart';

final entityDetailsProvider = FutureProvider.autoDispose.family<EpisodeDetailsEntity, EpisodeDetailsParam>((ref, param) async {
  final seasonEpisodeDetailsUsecase = ref.read(tvSeasonEpisodeDetailsUseCaseProvider);
  final response = await seasonEpisodeDetailsUsecase.episodeDetails(id: param.id, seasonNumber: param.seasonNumber, episodeNumber: param.episodeNumber);
  return response.fold(
    (left) => throw(left), 
    (right) => right
  );
});