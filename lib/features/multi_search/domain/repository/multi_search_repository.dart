import 'package:dartz/dartz.dart';
import '/core/utils/custom_exception.dart';
import '/features/search/domain/entities/search_movies_keyword_entity.dart';

abstract interface class MultiSearchRepository {

  Future<Either<CustomFailureException, SearchMoviesKeywordEntity>> multiSearch({required String query, required int pageCount});

}