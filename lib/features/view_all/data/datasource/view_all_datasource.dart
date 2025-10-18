import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/network/dio_provider.dart';
import '../../../movie/data/models/trending_movies_model.dart';

abstract class ViewAllDatasource {

  Future<TrendingMoviesResponse> getAllShow({
    required String showType,
    required String showCategory,
    int page = 1
  }); 
}

class ViewAllDatasourceImp implements ViewAllDatasource {
  
  final Dio apiClient;

  ViewAllDatasourceImp(this.apiClient);
  
  @override
  Future<TrendingMoviesResponse> getAllShow({required String showType, required String showCategory, int page = 1}) async {
    try {
      final response = await apiClient.get('/3/$showType/$showCategory', queryParameters: {
        'language': 'en-US',
        'page': page
      });
      if (response.statusCode == 200) {
        return TrendingMoviesResponse.fromJson(response.data);
      } else {
        throw Exception();
      }
    }  catch (e) {
      throw Exception();
    }
  }

}

final viewAllDataSourceProvider = Provider<ViewAllDatasource>((ref) {
  return ViewAllDatasourceImp(ref.read(dioProvider));
});