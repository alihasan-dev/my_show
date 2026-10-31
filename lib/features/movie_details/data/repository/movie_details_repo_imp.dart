import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_show/features/movie_details/domain/entities/episode_details_entity.dart';
import 'package:my_show/features/movie_details/domain/entities/movie_award_entity.dart';
import 'package:my_show/features/movie_details/domain/entities/movie_watchlist_entity.dart';
import 'package:my_show/features/movie_details/domain/entities/release_dates_entity.dart';
import 'package:my_show/features/movie_details/domain/entities/season_details_entity.dart';
import 'package:my_show/features/movie_details/domain/entities/watch_provider_entity.dart';
import '../../domain/entities/video_entity.dart';
import '../datasource/movie_details_local_datasource.dart';
import '../models/movie_watchlist_model.dart';
import '/core/network/check_connectivity.dart';
import '/core/utils/custom_exception.dart';
import '/features/movie/domain/entities/trending_movie_entity.dart';
import '/features/movie_details/data/datasource/movie_details_datasource.dart';
import '/features/movie_details/domain/entities/cast_entity.dart';
import '/features/movie_details/domain/entities/movie_details_entity.dart';
import '/features/movie_details/domain/entities/movie_keywords_entity.dart';
import '../../domain/repository/movie_details_repository.dart';

class MovieDetailsRepoImp implements MovieDetailsRepository {

  final MovieDetailsRemoteDatasource movieDetailsRemoteDatasource;
  final MovieDetailsLocalDataSource movieDetailsLocalDatasource;

  final CheckConnectivity connectivity;

  MovieDetailsRepoImp(
    this.movieDetailsRemoteDatasource, 
    this.movieDetailsLocalDatasource,
    this.connectivity
  );

  @override
  Future<Either<CustomFailureException, MovieDetailEntity>> movieDetails({required String id, required String type}) async {
    if (await connectivity.hasConnection) {
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
    if (await connectivity.hasConnection) {
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
    if (await connectivity.hasConnection) {
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
    if (await connectivity.hasConnection) {
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

  @override
  Future<Either<CustomFailureException, VideoEntity>> movieVideo({required String id, required String type}) async {
    if (await connectivity.hasConnection) {
      final data = await movieDetailsRemoteDatasource.movieVideo(id: id, type: type);
      final movieEntity = VideoEntity(
        id: data.id,
        results: data.results?.map((item) {
          return Results(
            id: item.id,
            name: item.name,
            key: item.key,
            site: item.site,
            size: item.size,
            type: item.type,
            official: item.official,
            publishedAt: item.publishedAt,
            iso6391: item.iso6391,
            iso31661: item.iso31661
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

  @override
  Future<Either<CustomFailureException, MovieAwardEntity>> movieAwards({required String id}) async {
    if (!await connectivity.hasConnection) {
      return Left(
        CustomFailureException(
          message: 'No internet connection',
        ),
      );
    }
    try {
      final data = await movieDetailsRemoteDatasource.movieAwards(id: id);
      final movieEntity = MovieAwardEntity(
        title: data.title,
        year: data.year,
        rated: data.rated,
        released: data.released,
        runtime: data.runtime,
        genre: data.genre,
        director: data.director,
        writer: data.writer,
        actors: data.actors,
        plot: data.plot,
        language: data.language,
        country: data.country,
        awards: data.awards
      );
      return Right(movieEntity);
    } catch (e) {
      return Left(
        CustomFailureException(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<CustomFailureException, WatchProviderEntity>> watchProvider({required String id, required String type}) async {
    if (await connectivity.hasConnection) {
      final data = await movieDetailsRemoteDatasource.watchProvider(id: id, type: type);
      final watchProvider = WatchProviderEntity(
        id: data.id,
        results: data.results?.map((key, value) => MapEntry(
          key, 
          WatchRegion(
            link: value.link,
            flatrate: value.flatrate?.map((item) {
              return ProviderDetails(
                logoPath: item.logoPath,
                providerId: item.providerId,
                providerName: item.providerName,
                displayPriority: item.displayPriority
              );
            }).toList(),
            buy: value.buy?.map((item) {
              return ProviderDetails(
                logoPath: item.logoPath,
                providerId: item.providerId,
                providerName: item.providerName,
                displayPriority: item.displayPriority
              );
            }).toList(),
            rent: value.rent?.map((item) {
              return ProviderDetails(
                logoPath: item.logoPath,
                providerId: item.providerId,
                providerName: item.providerName,
                displayPriority: item.displayPriority
              );
            }).toList(),
            free: value.free?.map((item) {
              return ProviderDetails(
                logoPath: item.logoPath,
                providerId: item.providerId,
                providerName: item.providerName,
                displayPriority: item.displayPriority
              );
            }).toList()
          )
        )),
      );
      return Right(watchProvider);
    } else {
      return left(CustomFailureException(
        message: 'No internet connection'
      ));
    }
  }

  @override
  Future<Either<CustomFailureException, ReleaseDatesEntity>> releaseDates({required String id}) async {
    if (await connectivity.hasConnection) {
      final data = await movieDetailsRemoteDatasource.releaseDates(id: id);
      final watchProvider = ReleaseDatesEntity(
        id: data.id,
        results: data.results?.map((item) {
          return ReleaseResults(
            iso3166: item.iso3611,
            releaseDates: item.releaseDates?.map((subItem) {
              return ReleaseDates(
                certification: subItem.certification,
                descriptors: subItem.descriptors ?? [],
                iso639: subItem.iso639,
                note: subItem.note,
                releaseDates: subItem.releaseDate,
                type: subItem.type
              );
            }).toList() ?? []
          );
        }).toList() ?? [],
      );
      return Right(watchProvider);
    } else {
      return left(CustomFailureException(
        message: 'No internet connection'
      ));
    }
  }

  @override
  Future<MovieWatchlistEntity?> getWatchlist(String id) async {
    return await movieDetailsLocalDatasource.getWatchlist(id);
  }

  @override
  Future<void> removeWatchlist(String id) async {
    movieDetailsLocalDatasource.removeWatchlist(id);
  }

  @override
  Future<void> saveWatchlist(MovieWatchlistEntity entity) async {
    final model = MovieWatchlistModel.fromEntity(entity);
    movieDetailsLocalDatasource.saveWatchlist(model);
  }


  @override
  Future<MovieWatchlistEntity?> getFavourite(String id) async {
    return await movieDetailsLocalDatasource.getFavourite(id);
  }

  @override
  Future<void> removeFavourite(String id) async {
    movieDetailsLocalDatasource.removeFavourite(id);
  }

  @override
  Future<void> saveFavourite(MovieWatchlistEntity entity) async {
    final model = MovieWatchlistModel.fromEntity(entity);
    movieDetailsLocalDatasource.saveFavourite(model);
  }

  @override
  Future<Either<CustomFailureException, EpisodeDetailsEntity>> episodeDetails({required String id, required String seasonNumber, required String episodeNumber}) async {
    if (await connectivity.hasConnection) {
      final data = await movieDetailsRemoteDatasource.episodeDetails(id: id, seasonNumber: seasonNumber, episodeNumber: episodeNumber);
      final seasonDetails = EpisodeDetailsEntity(
        id: data.id,
        airDate: data.airDate,
        crew: data.crew?.map((subItem) {
          return EpisodeCrewEntity(
            adult: subItem.adult,
            creditId: subItem.creditId,
            department: subItem.department,
            gender: subItem.gender,
            id: subItem.id,
            job: subItem.job,
            knownForDepartment: subItem.knownFordepartment,
            name: subItem.name,
            originalName: subItem.originalName,
            profilePath: subItem.profilePath,
            popularity: subItem.popularity
          );
        }).toList(),
        episodeNumber: data.episodeNumber,
        episodeType: data.episodeType,
        guestStars: data.guestStars?.map((subItem) {
          return EpisodeGuestStarEntity(
            adult: subItem.adult,
            creditId: subItem.creditId,
            gender: subItem.gender,
            id: subItem.id,
            knownForDepartment: subItem.knownFordepartment,
            name: subItem.name,
            originalName: subItem.originalName,
            profilePath: subItem.profilePath,
            popularity: subItem.popularity,
            character: subItem.character,
            order: subItem.order
          );
        }).toList(),
        name: data.name,
        overview: data.overview,
        productionCode: data.productionCode,
        runtime: data.runtime,
        seasonNumber: data.seasonNumber,
        stillPath: data.stillPath,
        voteAverage: data.voteAverage,
        voteCount: data.voteCount
      );
      return Right(seasonDetails);
    } else {
      return left(CustomFailureException(
        message: 'No internet connection'
      ));
    }
  }

  @override
  Future<Either<CustomFailureException, SeasonDetailsEntity>> seasonDetails({required String id, required String seasonNumber}) async {
    if (await connectivity.hasConnection) {
      final data = await movieDetailsRemoteDatasource.seasonDetails(id: id, seasonNumber: seasonNumber);
      final seasonDetails = SeasonDetailsEntity(
        id: data.id,
        mongoId: data.hashId,
        airDate: data.airDate,
        episodes: data.episodes?.map((item) {
          return EpisodeEntity(
            airDate: item.airDate,
            crew: item.crew?.map((subItem) {
              return CrewEntity(
                adult: subItem.adult,
                creditId: subItem.creditId,
                department: subItem.department,
                gender: subItem.gender,
                id: subItem.id,
                job: subItem.job,
                knownForDepartment: subItem.knownFordepartment,
                name: subItem.name,
                originalName: subItem.originalName,
                profilePath: subItem.profilePath,
                popularity: subItem.popularity
              );
            }).toList(),
            episodeNumber: item.episodeNumber,
            episodeType: item.episodeType,
            guestStars: item.guestStars?.map((subItem) {
              return GuestStarEntity(
                adult: subItem.adult,
                character: subItem.character,
                creditId: subItem.creditId,
                gender: subItem.gender,
                id: subItem.id,
                knownForDepartment: subItem.knownFordepartment,
                name: subItem.name,
                order: subItem.order,
                originalName: subItem.originalName,
                profilePath: subItem.profilePath,
                popularity: subItem.popularity
              );
            }).toList(),
            id: item.id,
            name: item.name,
            voteAverage: item.voteAverage,
            voteCount: item.voteCount,
            overview: item.overview,
            runtime: item.runtime,
            productionCode: item.productionCode,
            seasonNumber: item.seasonNumber,
            showId: item.showId,
            stillPath: item.stillPath
          );
        }).toList(),
        name: data.name,
        networks: data.networks?.map((item) {
          return NetworkEntity(
            id: item.id,
            logoPath: item.logoPath,
            name: item.name,
            originCountry: item.originalCountry
          );
        }).toList(),
        overview: data.overview,
        posterPath: data.posterPath,
        seasonNumber: data.seasonNumber,
        voteAverage: data.voteAverage
      );
      return Right(seasonDetails);
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
  final movieDetailsLocalDataProvider = ref.read(movieDetailsLocalDataSourceProvider);
  return MovieDetailsRepoImp(
    movieDetailsDataProvider, 
    movieDetailsLocalDataProvider,
    connection
  );
});


