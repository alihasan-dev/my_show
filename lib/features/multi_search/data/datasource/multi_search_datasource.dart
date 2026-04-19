import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/core/network/dio_provider.dart';
import '../models/search_movie_by_keyword_model.dart';

abstract interface class MultiSearchDatasource {
  Future<SearchMovieByKeywordModel> multiSearch({
    required String query,
    required int pageCount,
  });
}

class MultiSearchDatasourceImp implements MultiSearchDatasource {
  final Dio dioClient;

  MultiSearchDatasourceImp(this.dioClient);

  @override
  Future<SearchMovieByKeywordModel> multiSearch({
    required String query,
    required int pageCount,
  }) async {
    try {
      String endPoint = "/3/search/multi?query=$query&include_adult=false&language=en-US&page=$pageCount";
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

final multiSearchDataSourceProvider = Provider<MultiSearchDatasource>((ref) {
  return MultiSearchDatasourceImp(ref.read(dioProvider));
});
