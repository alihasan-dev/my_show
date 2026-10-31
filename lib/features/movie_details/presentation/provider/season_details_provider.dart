import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/legacy.dart';
import 'package:my_show/features/movie_details/domain/usecases/tv_season_details_usecase.dart';
import 'package:my_show/features/movie_details/presentation/provider/params/session_details_param.dart';
import '../../domain/entities/season_details_entity.dart';


class SeasonDetailsProvider extends StateNotifier<AsyncValue<SeasonDetailsEntity>> {


  final TvSeasonEpisodeDetailsUsecase tvSeasonEpisodeDetailsUsecase;

  SeasonDetailsProvider(this.tvSeasonEpisodeDetailsUsecase) : super(AsyncValue.loading());

  Future<void> seasonDetails(SeasonDetailsParam param) async {
    final response = await tvSeasonEpisodeDetailsUsecase.seasonDetails(id: param.id, seasonNumber: param.seasonNumber);
    response.fold(
      (left) {
        state = AsyncValue.error(left.message, StackTrace.current);
      },
      (right) {
        state = AsyncValue.data(right);
      }
    );
  }

}

final seasonDetailsProvider = StateNotifierProvider.autoDispose((ref) {
  final seasonDetailsUsecase = ref.read(tvSeasonEpisodeDetailsUseCaseProvider);
  return SeasonDetailsProvider(seasonDetailsUsecase);
});

// final seasonDetailsProvider = FutureProvider.autoDispose.family<SeasonDetailsEntity, SeasonDetailsParam>((ref, param) async {
//   final seasonDetailsUsecase = ref.read(tvSeasonEpisodeDetailsUseCaseProvider);
//   final response = await seasonDetailsUsecase.seasonDetails(id: param.id, seasonNumber: param.sessionNumber);
//   return response.fold(
//     (left) => throw left, 
//     (right) => right
//   );
// });


