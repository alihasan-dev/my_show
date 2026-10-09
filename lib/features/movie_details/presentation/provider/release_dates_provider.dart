import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/legacy.dart';
import 'package:my_show/features/movie_details/domain/entities/release_dates_entity.dart';
import '../../domain/usecases/release_dates_usecase.dart';

class ReleaseDatesNotifier extends StateNotifier<AsyncValue<ReleaseDatesEntity?>> {

  final ReleaseDatesUsecase releaseDatesUsecase;
  ReleaseDatesNotifier(this.releaseDatesUsecase) : super(AsyncValue.loading());

  ReleaseDatesEntity? releaseDatesEntity;

  Future<AsyncValue<ReleaseDatesEntity?>> releaseDates({required String id, String countryCode = 'US'}) async {
    state = const AsyncValue.loading();
    final result = await releaseDatesUsecase.releaseDates(id: id);
    result.fold(
      (failure) => state = AsyncValue.error(failure.message, StackTrace.current),
      (provider) {
        final result = (provider.results ?? []);
        if (result.isEmpty) {
          print('country >>>>> empty');
          state = AsyncValue.error('Unable to fetch the provider', StackTrace.current); 
        } else {
          final releaseDate = result.firstWhere((item) => item.iso3166 == countryCode,
            orElse: () => result.first
          );
          print('country >>>>> $releaseDate id $id');
          state = AsyncValue.data(ReleaseDatesEntity(id: provider.id, results: [releaseDate]));
        }
      },
    );
    return state;
  }

}

final releaseDatesProvider = StateNotifierProvider.autoDispose<ReleaseDatesNotifier, AsyncValue<ReleaseDatesEntity?>>((ref) {
  return ReleaseDatesNotifier(ref.read(releaseDatesUseCaseProvider));
});