import 'package:riverpod/riverpod.dart';
import '../../data/repository/movie_details_repo_imp.dart';
import '../entities/movie_watchlist_entity.dart';
import '../repository/movie_details_repository.dart';

class MovieFavouriteUsecase {

  final MovieDetailsRepository recentSearchRepository;

  MovieFavouriteUsecase(this.recentSearchRepository);

  Future<MovieWatchlistEntity?> getFavourite(String id) async {
    return await recentSearchRepository.getFavourite(id);
  }

  Future<void> saveFavourite(MovieWatchlistEntity entity) async {
    recentSearchRepository.saveFavourite(entity);
  }

  Future<void> removeFavourite({required String id}) async {
    await recentSearchRepository.removeFavourite(id);
  }

}


final movieFavouriteUseCaseProvider = Provider<MovieFavouriteUsecase>((ref) {
  return MovieFavouriteUsecase(ref.read(movieDetailsRepoProvider));
});