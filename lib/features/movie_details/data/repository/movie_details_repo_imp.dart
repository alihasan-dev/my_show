import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/network/check_connectivity.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../../movie/domain/entities/trending_movie_entity.dart';
import '../../domain/entities/cast_entity.dart';
import '../../domain/entities/movie_details_entity.dart';
import '../../domain/entities/movie_keywords_entity.dart';
import '../../domain/repository/movie_details_repository.dart';
import '../datasource/movie_details_datasource.dart';

class MovieDetailsRepoImp implements MovieDetailsRepository {

  final MovieDetailsRemoteDatasource movieDetailsRemoteDatasource;

  final CheckConnectivity connectivity;

  MovieDetailsRepoImp(this.movieDetailsRemoteDatasource, this.connectivity);

  @override
  Future<Either<CustomFailureException, MovieDetailEntity>> movieDetails({required String id, required String type}) async {
    if (await connectivity.isConnected) {
      final response = await movieDetailsRemoteDatasource.movieDetails(id: id, type: type);
      return Right(MovieDetailEntity(
        adult: response.adult,
        backdropPath: response.backdropPath,
        budget: response.budget,
        genres: response.genres?.map((item) => GenreEntity(
          id: item.id,
          name: item.name
        )).toList(),
        homepage: response.homepage,
        id: response.id,
        imdbId: response.imdbId,
        originCountry: response.originCountry,
        originalLanguage: response.originalLanguage,
        overview: response.overview,
        originalTitle: response.originalTitle,
        originalName: response.originalName,
        name: response.name,
        popularity: response.popularity,
        posterPath: response.posterPath,
        productionCompanies: response.productionCompanies?.map((item) {
          return ProductionCompanyEntity(
            id: item.id,
            logoPath: item.logoPath,
            name: item.name,
            originCountry: item.originCountry,
          );
        }).toList(),
        productionCountries: response.productionCountries?.map((item) {
          return ProductionCountryEntity(
            iso31661: item.iso31661,
            name: item.name
          );
        }).toList(),
        releaseDate: response.releaseDate ?? response.firstAirDate,
        revenue: response.revenue,
        runtime: response.runtime,
        spokenLanguages: response.spokenLanguages?.map((item) {
          return SpokenLanguageEntity(
            englishName: item.englishName,
            iso6391: item.iso6391,
            name: item.name
          );
        }).toList(),
        status: response.status,
        type: response.type,
        tagline: response.tagline,
        title: response.title,
        video: response.video,
        numberOfEpisodes: response.numberOfEpisodes,
        numberOfSeasons: response.numberOfSeasons,
        networks: response.networks?.map((item) {
          return Networks(
            id: item.id,
            name: item.name,
            logoPath: item.logoPath,
            originCountry: item.originCountry
          );
        }).toList(),
        seasons: response.seasons?.map((item) {
          return Seasons(
            airDate: item.airDate,
            episodeCount: item.episodeCount,
            id: item.id,
            name: item.name,
            overview: item.overview,
            posterPath: item.posterPath,
            seasonNumber: item.seasonNumber,
            voteAverage: item.voteAverage
          );
        }).toList(),
        voteAverage: response.voteAverage,
        voteCount: response.voteCount
      ));
    } else {
      return Left(CustomFailureException(
        message: 'Data does not found'
      ));
    }
  }

  @override
  Future<Either<CustomFailureException, MovieCastEntity>> movieCast({required String id, required String type}) async {
    if (await connectivity.isConnected) {
      final movieCast = await movieDetailsRemoteDatasource.movieCast(id: id, type: type);
      return Right(MovieCastEntity(
        id: movieCast.id,
        cast: movieCast.cast?.map((item) {
          return Cast(
            adult: item.adult,
            gender: item.gender,
            id: item.id,
            knownDepartment: item.knownFordepartment,
            name: item.name,
            originalName: item.originalName,
            profilePath: item.profilePath,
            castId: item.castId,
            character: item.character,
            creditId: item.creditId,
            order: item.order
          );
        }).toList(),
        crew: movieCast.crew?.map((item) {
          return Crew(
            adult: item.adult,
            gender: item.gender,
            id: item.id,
            knownDepartment: item.knownFordepartment,
            name: item.name,
            originalName: item.originalName,
            profilePath: item.profilePath,
            creditId: item.creditId,
            department: item.department,
            job: item.job
          );
        }).toList()
      ));
    } else {
      return left(CustomFailureException(
        message: 'No internet connection'
      ));
    }
  }

  @override
  Future<Either<CustomFailureException, TrendingMoviesEntity>> movieRecommendation({required String id, required String type}) async {
    if (await connectivity.isConnected) {
      final data = await movieDetailsRemoteDatasource.movieRecommentation(id: id, type: type);
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
      return left(CustomFailureException(
        message: 'No internet connection'
      ));
    }
  }

  @override
  Future<Either<CustomFailureException, MovieKeywordsEntity>> movieKeywords({required String id, required String type}) async {
    if (await connectivity.isConnected) {
      final data = await movieDetailsRemoteDatasource.movieKeywords(id: id, type: type);
      final keywords = type == 'movie' ? data.keywords : data.results;
      final movieEntity = MovieKeywordsEntity(
          id: data.id,
          keywords: keywords?.map((item) {
            return Keyword(
              id: item.id,
              name: item.name
            );
          }).toList() ?? [],
        );
        return Right(movieEntity);
    } else {
      return left(CustomFailureException(
        message: 'No internet connection'
      ));
    }
  }

}

final movieDetailsRepoProvider = Provider<MovieDetailsRepository>((ref) {
  final connection = ref.read(connectivityProvider);
  final movieDetailsDataProvider = ref.read(movieDetailsRemoteDataSourceProvider);
  return MovieDetailsRepoImp(movieDetailsDataProvider, connection);
});


