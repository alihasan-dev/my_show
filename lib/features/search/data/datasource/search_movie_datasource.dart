import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/core/network/dio_provider.dart';
import '../models/search_movie_by_keyword_model.dart';

abstract interface class SearchMovieDatasource {
  Future<SearchMovieByKeywordModel> searchMovieByKeyword({
    required String query,
    required int pageCount,
    required String type,
  });
}

class SearchMovieDatasourceImp implements SearchMovieDatasource {
  final Dio dioClient;

  SearchMovieDatasourceImp(this.dioClient);

  @override
  Future<SearchMovieByKeywordModel> searchMovieByKeyword({
    required String query,
    required String type,
    required int pageCount,
  }) async {
    try {
      String endPoint = "";
      if (type.startsWith('movie')) {
        endPoint = '/3/keyword/$query/movies?page=$pageCount';
      } else if (type.startsWith('tv')) {
        endPoint =
            '/3/discover/tv?include_adult=false&include_null_first_air_dates=false&language=en-US&page=$pageCount&sort_by=popularity.desc&with_keywords=$query';
      }
      final response = await dioClient.get(endPoint);
      if (response.statusCode == 200) {
        return SearchMovieByKeywordModel.fromJson(response.data);
      }
      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }
}

final searchMovieDataSourceProvider = Provider<SearchMovieDatasource>((ref) {
  return SearchMovieDatasourceImp(ref.read(dioProvider));
});
