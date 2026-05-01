import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/repository/multi_search_repository.dart';
import '../datasource/multi_search_datasource.dart';
import '/core/network/check_connectivity.dart';
import '/core/utils/custom_exception.dart';
import '/features/search/domain/entities/search_movies_keyword_entity.dart';

class MultiSearchRepoImp implements MultiSearchRepository {

  final CheckConnectivity checkConnectivity;
  final MultiSearchDatasource searchMovieDatasource;

  MultiSearchRepoImp(this.searchMovieDatasource, this.checkConnectivity);
  
  @override
  Future<Either<CustomFailureException, SearchMoviesKeywordEntity>> multiSearch({required String query, required int pageCount}) async {
    if (await checkConnectivity.hasConnection) {
      final data = await searchMovieDatasource.multiSearch(query: query, pageCount: pageCount);
      final movieEntity = SearchMoviesKeywordEntity(
          id: data.id,
          page: data.page,
          result: data.results?.map((item) {
            return Movies(
              adult: item.adult ?? false,
              backdropPath: item.backdropPath ?? '',
              id: item.id ?? -1,
              title: item.title ?? item.title ?? item.name ??'',
              originalTitle: item.originalTitle ?? item.originalName ?? '',
              name: item.name ?? '',
              originalName: item.originalName,
              knownForDepartment: item.knownForDepartment,
              overview: item.overview ?? '',
              mediaType: item.mediaType ?? '',
              profilePath: item.profilePath ?? '',
              gender: item.gender ?? -1,
              knownFor: item.knownFor?.map((item) {
                return Movies(
                  adult: item.adult ?? false,
                  backdropPath: item.backdropPath ?? '',
                  id: item.id ?? -1,
                  title: item.title ?? item.title ?? item.name ??'',
                  originalTitle: item.originalTitle ?? item.originalName ?? '',
                  overview: item.overview ?? '',
                  mediaType: item.mediaType ?? '',
                  profilePath: item.profilePath ?? '',
                  gender: item.gender ?? -1,
                  originalLanguage: item.originalLanguage ?? '',
                  genres: item.genreIds ?? [],
                  popularity: item.popularity ?? 0.0,
                  releaseDate: item.releaseDate ?? item.firstAirDate ?? '',
                  video: item.video ?? false,
                  voteAverage: item.voteAverage ?? 0.0,
                  voteCount: item.voteCount ?? 0,
                );
              }).toList() ?? [],
              posterPath: item.posterPath ?? '',
              originalLanguage: item.originalLanguage ?? '',
              genres: item.genreIds ?? [],
              popularity: item.popularity ?? 0.0,
              releaseDate: item.releaseDate ?? item.firstAirDate ?? '',
              video: item.video ?? false,
              voteAverage: item.voteAverage ?? 0.0,
              voteCount: item.voteCount ?? 0,
            );
          }).toList() ?? [],
          totalPages: data.totalPages ?? 0,
          totalResults: data.totalResults ?? 0
        );
        return Right(movieEntity);
    } else {
      return Left(CustomFailureException(
        message: 'No internet connection'
      ));
    }
  }

  

}

final multiSearchRepoProvider = Provider<MultiSearchRepository>((ref) {
  final dataSource = ref.read(multiSearchDataSourceProvider);
  final networkProvider = ref.read(connectivityProvider);
  return MultiSearchRepoImp(dataSource, networkProvider);
});