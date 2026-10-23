import 'package:riverpod/riverpod.dart';
import '../../../../core/utils/app_enums.dart';
import '../../domain/entities/watchlist_fav_entity.dart';
import '../../domain/usecases/watchlist_fav_usecase.dart';

final watchlistFavProvider = FutureProvider.autoDispose.family<List<WatchlistFavEntity>, WatchlistFavType>((ref, type) async {
  final watchFavUseCase = ref.read(watchFavUseCaseProvider);
  return await watchFavUseCase.getWatchFavList(type: type);
});