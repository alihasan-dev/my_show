import 'package:dartz/dartz.dart';
import '/core/utils/custom_exception.dart';
import '/features/movie/domain/entities/trending_movie_entity.dart';

abstract interface class ViewAllRepo {

  Future<Either<CustomFailureException, TrendingMoviesEntity>> getAllShow({
    required String showType,
    required String showCategory,
    int page = 1
  });
  
}