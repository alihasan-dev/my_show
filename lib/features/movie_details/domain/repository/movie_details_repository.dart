import 'package:dartz/dartz.dart';
import 'package:my_show/features/movie_details/domain/entities/episode_details_entity.dart';
import 'package:my_show/features/movie_details/domain/entities/season_details_entity.dart';
import '../entities/movie_award_entity.dart';
import '../entities/movie_watchlist_entity.dart';
import '../entities/release_dates_entity.dart';
import '../entities/video_entity.dart';
import '../entities/watch_provider_entity.dart';
import '/core/utils/custom_exception.dart';
import '/features/movie_details/domain/entities/cast_entity.dart';
import '/features/movie_details/domain/entities/movie_keywords_entity.dart';
import '../../../movie/domain/entities/trending_movie_entity.dart';
import '../entities/movie_details_entity.dart';

abstract interface class MovieDetailsRepository {

  Future<Either<CustomFailureException, MovieDetailEntity>> movieDetails({required String id, required String type});

  Future<Either<CustomFailureException, MovieCastEntity>> movieCast({required String id, required String type});

  Future<Either<CustomFailureException, TrendingMoviesEntity>> movieRecommendation({required String id, required String type});

  Future<Either<CustomFailureException, MovieKeywordsEntity>> movieKeywords({required String id, required String type});

  Future<Either<CustomFailureException, VideoEntity>> movieVideo({required String id, required String type});

  Future<Either<CustomFailureException, MovieAwardEntity>> movieAwards({required String id});

  Future<Either<CustomFailureException, WatchProviderEntity>> watchProvider({required String id, required String type});

  Future<Either<CustomFailureException, ReleaseDatesEntity>> releaseDates({required String id});

  Future<MovieWatchlistEntity?> getWatchlist(String id);

  Future<void> saveWatchlist(MovieWatchlistEntity entity);
  
  Future<void> removeWatchlist(String id);

  Future<MovieWatchlistEntity?> getFavourite(String id);

  Future<void> saveFavourite(MovieWatchlistEntity entity);
  
  Future<void> removeFavourite(String id);

  Future<Either<CustomFailureException, SeasonDetailsEntity>> seasonDetails({required String id, required String seasonNumber});

  Future<Either<CustomFailureException, EpisodeDetailsEntity>> episodeDetails({required String id, required String seasonNumber, required String episodeNumber});

}