import 'package:dartz/dartz.dart';
import '/core/network/check_connectivity.dart';
import '/core/utils/custom_exception.dart';
import '/features/movie/domain/entities/trending_movie_entity.dart';
import '/features/view_all/data/datasource/view_all_datasource.dart';
import '/features/view_all/domain/repository/view_all_repo.dart';
import 'package:riverpod/riverpod.dart';

class ViewAllRepoImp implements ViewAllRepo {
  
  final CheckConnectivity checkConnectivity;
  final ViewAllDatasource viewAllDatasource;

  ViewAllRepoImp(this.viewAllDatasource, this.checkConnectivity);

  @override
  Future<Either<CustomFailureException, TrendingMoviesEntity>> getAllShow({required String showType, required String showCategory, int page = 1}) async {
    if (await checkConnectivity.isConnected) {
      final result = await viewAllDatasource.getAllShow(
        showType: showType,
        showCategory: showCategory,
        page: page
      );
      final movieEntity = TrendingMoviesEntity(
        page: result.page ?? 0,
        result: result.results?.map((item) {
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
        totalPages: result.totalPages ?? 0,
        totalResult: result.totalResults ?? 0
      );
      return Right(movieEntity);
    } else {
      return Left(CustomFailureException(message: 'No Internet Connection'));
    }
  }

}

final viewAllRepoProvider = Provider<ViewAllRepo>((ref) {
  return ViewAllRepoImp(
    ref.read(viewAllDataSourceProvider),
    ref.read(connectivityProvider)
  );
});