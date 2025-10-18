import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/network/check_connectivity.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../domain/entities/search_movies_keyword_entity.dart';
import '../../domain/repository/search_movie_repository.dart';
import '../datasource/search_movie_datasource.dart';

class SearchMovieRepoImp implements SearchMovieRepository {

  final CheckConnectivity checkConnectivity;
  final SearchMovieDatasource searchMovieDatasource;

  SearchMovieRepoImp(this.searchMovieDatasource, this.checkConnectivity);
  
  @override
  Future<Either<CustomFailureException, SearchMoviesKeywordEntity>> searchMovieByKeyword({required String query, required String type, required int pageCount}) async {
    if (await checkConnectivity.isConnected) {
      final data = await searchMovieDatasource.searchMovieByKeyword(query: query, type: type, pageCount: pageCount);
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
              overview: item.overview ?? '',
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

final searchMovieRepoProvider = Provider<SearchMovieRepository>((ref) {
  final dataSource = ref.read(searchMovieDataSourceProvider);
  final networkProvider = ref.read(connectivityProvider);
  return SearchMovieRepoImp(dataSource, networkProvider);
});