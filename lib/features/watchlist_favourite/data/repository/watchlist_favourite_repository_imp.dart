import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/app_enums.dart';
import '../../domain/entities/watchlist_fav_entity.dart';
import '../../domain/repository/watchlist_favourite_repository.dart';
import '../datasource/watchlist_favourite_local_datasource.dart';

class WatchlistFavRepositoryImp implements WatchlistFavRepository {

  final WatchlistFavLocalDataSource localDataSource;

  WatchlistFavRepositoryImp(this.localDataSource);

  @override
  Future<List<WatchlistFavEntity>> getWatchFavList({required WatchlistFavType type}) async {
    final data = await localDataSource.getWatchFavList(type: type);
    return data.map((item) {
      return WatchlistFavEntity(
        id: item.id,
        title: item.title,
        mediaType: item.mediaType,
        posterPath: item.posterPath,
        createdDate: item.createdDate
      );
    }).toList();
  }

}

final watchlistFavRepoProvider = Provider<WatchlistFavRepository>((ref) {
  final localDataSource = ref.read(watchlistFavLocalDataSourceProvider);
  return WatchlistFavRepositoryImp(localDataSource);
});