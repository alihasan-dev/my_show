import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/core/network/check_connectivity.dart';
import '/core/utils/custom_exception.dart';
import '/features/movie/data/datasource/movie_remote_datasource.dart';
import '/features/movie/domain/repository/movie_repository.dart';

import '../../domain/entities/trending_movie_entity.dart';

class DashboardRepositoryImp implements DashboardRepository {

  final DashboardRemoteDatasource remoteDatasource;

  final CheckConnectivity checkConnectivity;

  DashboardRepositoryImp(this.checkConnectivity, this.remoteDatasource);

  @override
  Future<Either<String, TrendingMoviesEntity>> trendingMovies() async {
    try {
      if (await checkConnectivity.isConnected) {
        final data = await remoteDatasource.trendingMovies();
        final movieEntity = TrendingMoviesEntity(
          page: data.page ?? 0,
          result: data.results?.map((item) {
            return TrendingMovie(
              adult: item.adult ?? false,
              backdropPath: item.backdropPath ?? '',
              id: item.id ?? -1,
              title: item.title ?? item.name ?? '',
              originalTitle: item.originalTitle ?? item.originalName ?? '',
              overview: item.overview ?? '',
              posterPath: item.posterPath ?? '',
              mediaType: item.mediaType ?? '',
              originalLanguage: item.originalLanguage ?? '',
              genreId: item.genreIds ?? [],
              popularity: item.popularity ?? 0.0,
              releaseDate: item.releaseDate ?? item.firstAirDate ?? '',
              video: item.video ?? false,
              voteAverage: item.voteAverage ?? 0.0,
              voteCount: item.voteCount ?? 0,
            );
          }).toList() ?? [],
          totalPages: data.totalPages ?? 0,
          totalResult: data.totalResults ?? 0
        );
        return Right(movieEntity);
      } else {
        return Left('No internet connection');
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<CustomFailureException, TrendingMoviesEntity>> popularMovies({required int page}) async {
    try {
      if (await checkConnectivity.isConnected) {
        final data = await remoteDatasource.popularMovies(page: page);
        final movieEntity = TrendingMoviesEntity(
          page: data.page ?? 0,
          result: data.results?.map((item) {
            return TrendingMovie(
              adult: item.adult ?? false,
              backdropPath: item.backdropPath ?? '',
              id: item.id ?? -1,
              title: item.title ?? item.name ?? '',
              originalTitle: item.originalTitle ?? item.originalName ?? '',
              overview: item.overview ?? '',
              posterPath: item.posterPath ?? '',
              mediaType: item.mediaType ?? '',
              originalLanguage: item.originalLanguage ?? '',
              genreId: item.genreIds ?? [],
              popularity: item.popularity ?? 0.0,
              releaseDate: item.releaseDate ?? item.firstAirDate ?? '',
              video: item.video ?? false,
              voteAverage: item.voteAverage ?? 0.0,
              voteCount: item.voteCount ?? 0,
            );
          }).toList() ?? [],
          totalPages: data.totalPages ?? 0,
          totalResult: data.totalResults ?? 0
        );
        return Right(movieEntity);
      } else {
        return Left(CustomFailureException(message: 'No internet connection'));
      }
    } catch (e) {
      return Left(CustomFailureException(message: 'Something went wrong'));
    }
  }
  
  @override
  Future<Either<CustomFailureException, TrendingMoviesEntity>> topRatedMovies({required int page}) async {
    try {
      if (await checkConnectivity.isConnected) {
        final data = await remoteDatasource.topRatedMovies(page: page);
        final movieEntity = TrendingMoviesEntity(
          page: data.page ?? 0,
          result: data.results?.map((item) {
            return TrendingMovie(
              adult: item.adult ?? false,
              backdropPath: item.backdropPath ?? '',
              id: item.id ?? -1,
              title: item.title ?? item.name ?? '',
              originalTitle: item.originalTitle ?? item.originalName ?? '',
              overview: item.overview ?? '',
              posterPath: item.posterPath ?? '',
              mediaType: item.mediaType ?? '',
              originalLanguage: item.originalLanguage ?? '',
              genreId: item.genreIds ?? [],
              popularity: item.popularity ?? 0.0,
              releaseDate: item.releaseDate ?? item.firstAirDate ?? '',
              video: item.video ?? false,
              voteAverage: item.voteAverage ?? 0.0,
              voteCount: item.voteCount ?? 0,
            );
          }).toList() ?? [],
          totalPages: data.totalPages ?? 0,
          totalResult: data.totalResults ?? 0
        );
        return Right(movieEntity);
      } else {
        return Left(CustomFailureException(message: 'No internet connection'));
      }
    } catch (e) {
      return Left(CustomFailureException(message: 'Something went wrong'));
    }
  }
  
  @override
  Future<Either<CustomFailureException, TrendingMoviesEntity>> nowPlayingMovies({required int page}) async {
    try {
      if (await checkConnectivity.isConnected) {
        final data = await remoteDatasource.nowPlayingMovies(page: page);
        final movieEntity = TrendingMoviesEntity(
          page: data.page ?? 0,
          result: data.results?.map((item) {
            return TrendingMovie(
              adult: item.adult ?? false,
              backdropPath: item.backdropPath ?? '',
              id: item.id ?? -1,
              title: item.title ?? item.name ?? '',
              originalTitle: item.originalTitle ?? item.originalName ?? '',
              overview: item.overview ?? '',
              posterPath: item.posterPath ?? '',
              mediaType: item.mediaType ?? '',
              originalLanguage: item.originalLanguage ?? '',
              genreId: item.genreIds ?? [],
              popularity: item.popularity ?? 0.0,
              releaseDate: item.releaseDate ?? item.firstAirDate ?? '',
              video: item.video ?? false,
              voteAverage: item.voteAverage ?? 0.0,
              voteCount: item.voteCount ?? 0,
            );
          }).toList() ?? [],
          totalPages: data.totalPages ?? 0,
          totalResult: data.totalResults ?? 0
        );
        return Right(movieEntity);
      } else {
        return Left(CustomFailureException(message: 'No internet connection'));
      }
    } catch (e) {
      return Left(CustomFailureException(message: 'Something went wrong'));
    }
  }
  
  @override
  Future<Either<CustomFailureException, TrendingMoviesEntity>> upcomingMovies({required int page}) async {
    try {
      if (await checkConnectivity.isConnected) {
        final data = await remoteDatasource.upcomingMovies(page: page);
        final movieEntity = TrendingMoviesEntity(
          page: data.page ?? 0,
          result: data.results?.map((item) {
            return TrendingMovie(
              adult: item.adult ?? false,
              backdropPath: item.backdropPath ?? '',
              id: item.id ?? -1,
              title: item.title ?? item.name ?? '',
              originalTitle: item.originalTitle ?? item.originalName ?? '',
              overview: item.overview ?? '',
              posterPath: item.posterPath ?? '',
              mediaType: item.mediaType ?? '',
              originalLanguage: item.originalLanguage ?? '',
              genreId: item.genreIds ?? [],
              popularity: item.popularity ?? 0.0,
              releaseDate: item.releaseDate ?? item.firstAirDate ?? '',
              video: item.video ?? false,
              voteAverage: item.voteAverage ?? 0.0,
              voteCount: item.voteCount ?? 0,
            );
          }).toList() ?? [],
          totalPages: data.totalPages ?? 0,
          totalResult: data.totalResults ?? 0
        );
        return Right(movieEntity);
      } else {
        return Left(CustomFailureException(message: 'No internet connection'));
      }
    } catch (e) {
      return Left(CustomFailureException(message: 'Something went wrong'));
    }
  }

}

final dashboardRepositoryProvider = Provider<DashboardRepository>((ref) {
  final networkProvider = ref.read(connectivityProvider);
  final dataSource = ref.read(dashboardRemoteDataProvider);
  return DashboardRepositoryImp(networkProvider, dataSource);
});