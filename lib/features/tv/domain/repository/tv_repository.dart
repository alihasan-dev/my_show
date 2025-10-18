import 'package:dartz/dartz.dart';
import '../../../../core/utils/custom_exception.dart';
import '../entities/trending_tvshow_entity.dart';

abstract interface class TvRepository {

  Future<Either<CustomFailureException, TrendingTVShowEntity>> trendingTVShow();

  Future<Either<CustomFailureException, TrendingTVShowEntity>> getNowPlaying();

  Future<Either<CustomFailureException, TrendingTVShowEntity>> popularShow();

  Future<Either<CustomFailureException, TrendingTVShowEntity>> topRatedShows();

  Future<Either<CustomFailureException, TrendingTVShowEntity>> upcomingShows();
  
}