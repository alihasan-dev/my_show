import 'package:riverpod/riverpod.dart';
import '../../data/repository/movie_details_repo_imp.dart';
import '../entities/movie_watchlist_entity.dart';
import '../repository/movie_details_repository.dart';

class MovieWatchlistUsecase {

  final MovieDetailsRepository recentSearchRepository;

  MovieWatchlistUsecase(this.recentSearchRepository);

  Future<MovieWatchlistEntity?> getWatchlist(String id) async {
    return await recentSearchRepository.getWatchlist(id);
  }

  Future<void> saveWatchlist(MovieWatchlistEntity entity) async {
    recentSearchRepository.saveWatchlist(entity);
  }

  Future<void> removeWatchlist({required String id}) async {
    await recentSearchRepository.removeWatchlist(id);
  }

}


final movieWatchlistUseCaseProvider = Provider<MovieWatchlistUsecase>((ref) {
  return MovieWatchlistUsecase(ref.read(movieDetailsRepoProvider));
});