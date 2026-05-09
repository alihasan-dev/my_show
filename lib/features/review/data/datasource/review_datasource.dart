import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/review_model.dart';
import '/core/network/dio_provider.dart';

abstract interface class ReviewRemoteDatasource {

  Future<ReviewModel> review({required String id, required String type, required int page});
}

class ReviewRemoteDatasourceImp implements ReviewRemoteDatasource {

  final Dio dioClient;
  ReviewRemoteDatasourceImp(this.dioClient);
  
  @override
  Future<ReviewModel> review({required String id, required String type, required int page}) async {
    try {
      final response = await dioClient.get('/3/$type/$id/reviews?language=en-US&page=$page');
      if (response.statusCode == 200) {
        return ReviewModel.fromJson(response.data);
      }
      throw Exception();
    } catch (e) {
      throw Exception();   
    }
  }

}

final reviewRemoteDataSourceProvider = Provider<ReviewRemoteDatasource>((ref) {
  final apiClient = ref.read(dioProvider);
  return ReviewRemoteDatasourceImp(apiClient);
});