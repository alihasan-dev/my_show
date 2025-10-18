import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/search_movie_repo_imp.dart';
import '../entities/search_movies_keyword_entity.dart';
import '../repository/search_movie_repository.dart';

class SearchMovieKeywordUsecase {
  final SearchMovieRepository searchMovieRepository;

  SearchMovieKeywordUsecase(this.searchMovieRepository);

  Future<Either<CustomFailureException, SearchMoviesKeywordEntity>> searchMovieKeyword({required String query, required String type, required int pageCount}) async {
    return await searchMovieRepository.searchMovieByKeyword(query: query, type: type, pageCount: pageCount);
  }
}

final searchMovieKeywordUseCaseProvider = Provider<SearchMovieKeywordUsecase>((ref) {
  return SearchMovieKeywordUsecase(ref.read(searchMovieRepoProvider));
});