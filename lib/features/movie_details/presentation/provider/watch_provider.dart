import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/legacy.dart';
import '../../domain/entities/watch_provider_entity.dart';
import '../../domain/usecases/watch_provider_usecase.dart';


class WatchNotifier extends StateNotifier<AsyncValue<WatchProviderModal?>> {

  final WatchProviderUsecase watchProviderUsecase;
  WatchNotifier(this.watchProviderUsecase) : super(AsyncValue.loading());

  WatchProviderEntity? watchProviderEntity;

  Future<AsyncValue<WatchProviderModal?>> watchProvider({required String id, required String type, String countryCode = 'US'}) async {

    state = const AsyncValue.loading();
    final result = await watchProviderUsecase.watchProvider(id: id, type: type);
    result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (provider) {
        watchProviderEntity ??= provider;
        if (watchProviderEntity != null) {
          final mapEntry = watchProviderEntity!.results ?? {};
          final watchProviderModal  = WatchProviderModal(
            currentLocal: countryCode,
            allLocal: mapEntry.isEmpty
            ? []
            : mapEntry.keys.toList(),
            watchRegion: mapEntry.isEmpty
            ? null
            : mapEntry.entries.firstWhere(
                (item) => item.key == countryCode,
                orElse: () => mapEntry.entries.first
              ).value
          );
          state = AsyncValue.data(watchProviderModal);
        } else {
          state = AsyncValue.error('Unable to fetch the provider', StackTrace.current);
        }
      },
    );
    return state;
  }

}

final watchProvider = StateNotifierProvider.autoDispose<WatchNotifier, AsyncValue<WatchProviderModal?>>((ref) {
  return WatchNotifier(ref.read(watchProviderUseCaseProvider));
});