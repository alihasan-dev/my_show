import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/network/check_connectivity.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../domain/entities/trending_tvshow_entity.dart';
import '../../domain/repository/tv_repository.dart';
import '../datasource/remote_tv_datasource.dart';

class TvRepositoryImp implements TvRepository {
  
  final TvShowDataSource tvShowDataSource;

  final CheckConnectivity checkConnectivity;

  TvRepositoryImp(this.tvShowDataSource, this.checkConnectivity);

  @override
  Future<Either<CustomFailureException, TrendingTVShowEntity>> trendingTVShow() async {
    if (await checkConnectivity.isConnected) {
      final data = await tvShowDataSource.trendingTvShow();
      final tvShowEntity = TrendingTVShowEntity(
        page: data.page ?? 0,
        result: data.results?.map((item) {
          return TrendingShow(
            adult: item.adult ?? false,
            backdropPath: item.backdropPath ?? '',
            id: item.id ?? -1,
            name: item.name ?? '',
            originalName: item.originalTitle ?? '',
            overview: item.overview ?? '',
            posterPath: item.posterPath ?? '',
            mediaType: item.mediaType ?? '',
            originalLanguage: item.originalLanguage ?? '',
            genreId: item.genreIds ?? [],
            popularity: item.popularity ?? 0.0,
            firstAirDate: item.firstAirDate ?? '',
            voteAverage: item.voteAverage ?? 0.0,
            voteCount: item.voteCount ?? 0,
          );
        }).toList() ?? [],
        totalPages: data.totalPages ?? 0,
        totalResult: data.totalResults ?? 0
      );
      return Right(tvShowEntity);
    } else {
      return Left(CustomFailureException(message: 'No internet connection'));
    }
  }
  
  @override
  Future<Either<CustomFailureException, TrendingTVShowEntity>> getNowPlaying() async {
    if (await checkConnectivity.isConnected) {
      final data = await tvShowDataSource.onAirShows();
      final tvShowEntity = TrendingTVShowEntity(
        page: data.page ?? 0,
        result: data.results?.map((item) {
          return TrendingShow(
            adult: item.adult ?? false,
            backdropPath: item.backdropPath ?? '',
            id: item.id ?? -1,
            name: item.name ?? '',
            originalName: item.originalTitle ?? '',
            overview: item.overview ?? '',
            posterPath: item.posterPath ?? '',
            mediaType: item.mediaType ?? '',
            originalLanguage: item.originalLanguage ?? '',
            genreId: item.genreIds ?? [],
            popularity: item.popularity ?? 0.0,
            firstAirDate: item.firstAirDate ?? '',
            voteAverage: item.voteAverage ?? 0.0,
            voteCount: item.voteCount ?? 0,
          );
        }).toList() ?? [],
        totalPages: data.totalPages ?? 0,
        totalResult: data.totalResults ?? 0
      );
      return Right(tvShowEntity);
    } else {
      return Left(CustomFailureException(message: 'No internet connection'));
    }
  }
  
  @override
  Future<Either<CustomFailureException, TrendingTVShowEntity>> popularShow() async {
    if (await checkConnectivity.isConnected) {
      final data = await tvShowDataSource.popularShows();
      final tvShowEntity = TrendingTVShowEntity(
        page: data.page ?? 0,
        result: data.results?.map((item) {
          return TrendingShow(
            adult: item.adult ?? false,
            backdropPath: item.backdropPath ?? '',
            id: item.id ?? -1,
            name: item.name ?? '',
            originalName: item.originalTitle ?? '',
            overview: item.overview ?? '',
            posterPath: item.posterPath ?? '',
            mediaType: item.mediaType ?? '',
            originalLanguage: item.originalLanguage ?? '',
            genreId: item.genreIds ?? [],
            popularity: item.popularity ?? 0.0,
            firstAirDate: item.firstAirDate ?? '',
            voteAverage: item.voteAverage ?? 0.0,
            voteCount: item.voteCount ?? 0,
          );
        }).toList() ?? [],
        totalPages: data.totalPages ?? 0,
        totalResult: data.totalResults ?? 0
      );
      return Right(tvShowEntity);
    } else {
      return Left(CustomFailureException(message: 'No internet connection'));
    }
  }
  
  @override
  Future<Either<CustomFailureException, TrendingTVShowEntity>> topRatedShows() async {
    if (await checkConnectivity.isConnected) {
      final data = await tvShowDataSource.topRatedShows();
      final tvShowEntity = TrendingTVShowEntity(
        page: data.page ?? 0,
        result: data.results?.map((item) {
          return TrendingShow(
            adult: item.adult ?? false,
            backdropPath: item.backdropPath ?? '',
            id: item.id ?? -1,
            name: item.name ?? '',
            originalName: item.originalTitle ?? '',
            overview: item.overview ?? '',
            posterPath: item.posterPath ?? '',
            mediaType: item.mediaType ?? '',
            originalLanguage: item.originalLanguage ?? '',
            genreId: item.genreIds ?? [],
            popularity: item.popularity ?? 0.0,
            firstAirDate: item.firstAirDate ?? '',
            voteAverage: item.voteAverage ?? 0.0,
            voteCount: item.voteCount ?? 0,
          );
        }).toList() ?? [],
        totalPages: data.totalPages ?? 0,
        totalResult: data.totalResults ?? 0
      );
      return Right(tvShowEntity);
    } else {
      return Left(CustomFailureException(message: 'No internet connection'));
    }
  }
  
  @override
  Future<Either<CustomFailureException, TrendingTVShowEntity>> upcomingShows() async {
    if (await checkConnectivity.isConnected) {
      final data = await tvShowDataSource.upcomingShows();
      final tvShowEntity = TrendingTVShowEntity(
        page: data.page ?? 0,
        result: data.results?.map((item) {
          return TrendingShow(
            adult: item.adult ?? false,
            backdropPath: item.backdropPath ?? '',
            id: item.id ?? -1,
            name: item.name ?? '',
            originalName: item.originalTitle ?? '',
            overview: item.overview ?? '',
            posterPath: item.posterPath ?? '',
            mediaType: item.mediaType ?? '',
            originalLanguage: item.originalLanguage ?? '',
            genreId: item.genreIds ?? [],
            popularity: item.popularity ?? 0.0,
            firstAirDate: item.firstAirDate ?? '',
            voteAverage: item.voteAverage ?? 0.0,
            voteCount: item.voteCount ?? 0,
          );
        }).toList() ?? [],
        totalPages: data.totalPages ?? 0,
        totalResult: data.totalResults ?? 0
      );
      return Right(tvShowEntity);
    } else {
      return Left(CustomFailureException(message: 'No internet connection'));
    }
  }

}


final tvRepositoryProvider = Provider<TvRepository>((ref){ 
  return TvRepositoryImp(
    ref.read(tvShowDataSourceProvider), 
    ref.read(connectivityProvider)
  );
});