import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_show/features/movie_details/domain/usecases/tv_season_details_usecase.dart';
import 'package:my_show/features/movie_details/presentation/provider/params/session_details_param.dart';
import '../../domain/entities/season_details_entity.dart';

final seasonDetailsProvider = FutureProvider.autoDispose.family<SeasonDetailsEntity, SessionDetailsParam>((ref, param) async {
  final seasonDetailsUsecase = ref.read(tvSeasonEpisodeDetailsUseCaseProvider);
  final response = await seasonDetailsUsecase.seasonDetails(id: param.id, seasonNumber: param.sessionNumber);
  return response.fold(
    (left) => throw left, 
    (right) => right
  );
});