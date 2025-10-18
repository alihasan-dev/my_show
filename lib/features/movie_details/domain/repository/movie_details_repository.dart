import 'package:dartz/dartz.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../../movie/domain/entities/trending_movie_entity.dart';
import '../entities/cast_entity.dart';
import '../entities/movie_details_entity.dart';
import '../entities/movie_keywords_entity.dart';

abstract interface class MovieDetailsRepository {

  Future<Either<CustomFailureException, MovieDetailEntity>> movieDetails({required String id, required String type});

  Future<Either<CustomFailureException, MovieCastEntity>> movieCast({required String id, required String type});

  Future<Either<CustomFailureException, TrendingMoviesEntity>> movieRecommendation({required String id, required String type});

  Future<Either<CustomFailureException, MovieKeywordsEntity>> movieKeywords({required String id, required String type});

}