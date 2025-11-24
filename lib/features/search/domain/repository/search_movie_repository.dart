import 'package:dartz/dartz.dart';
import '/core/utils/custom_exception.dart';
import '/features/search/domain/entities/search_movies_keyword_entity.dart';

abstract interface class SearchMovieRepository {

  Future<Either<CustomFailureException, SearchMoviesKeywordEntity>> searchMovieByKeyword({required String query, required String type, required int pageCount});

}