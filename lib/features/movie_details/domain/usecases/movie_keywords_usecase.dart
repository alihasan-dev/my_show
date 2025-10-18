import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/movie_details_repo_imp.dart';
import '../entities/movie_keywords_entity.dart';
import '../repository/movie_details_repository.dart';

class MovieKeywordsUsecase {

  final MovieDetailsRepository movieDetailsRepository;

  MovieKeywordsUsecase(this.movieDetailsRepository);

  Future<Either<CustomFailureException, MovieKeywordsEntity>> movieKeywords({required String id, required String type}) async {
    return movieDetailsRepository.movieKeywords(id: id, type: type);
  }

}

final movieKeywordUseCaseProvider = Provider<MovieKeywordsUsecase>((ref) {
  return MovieKeywordsUsecase(ref.read(movieDetailsRepoProvider));
});