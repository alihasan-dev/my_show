import 'package:dartz/dartz.dart';
import '/core/utils/custom_exception.dart';
import '../entities/trending_movie_entity.dart';

abstract interface class DashboardRepository {

  Future<Either<String, TrendingMoviesEntity>> trendingMovies();

  Future<Either<CustomFailureException, TrendingMoviesEntity>> popularMovies({required int page});
  
  Future<Either<CustomFailureException, TrendingMoviesEntity>> topRatedMovies({required int page});

  Future<Either<CustomFailureException, TrendingMoviesEntity>> nowPlayingMovies({required int page});

  Future<Either<CustomFailureException, TrendingMoviesEntity>> upcomingMovies({required int page});
}