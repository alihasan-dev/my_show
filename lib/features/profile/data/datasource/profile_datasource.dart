import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/network/dio_provider.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../../../features/profile/data/models/movie_credit_model.dart';
import '../models/profile_details_model.dart';

abstract class ProfileDatasource {

  Future<MovieCreditModel> creditMovies({required String userId, required String type});
  Future<ProfileDetailsModel> profileDetails({required String userId});
}

class ProfileDatasourceImp implements ProfileDatasource {

  final Dio dioClient;

  ProfileDatasourceImp(this.dioClient);

  @override
  Future<MovieCreditModel> creditMovies({required String userId, required String type}) async {
    final response = await dioClient.get('/3/person/$userId/$type');
    if (response.statusCode == 200) {
      return MovieCreditModel.fromJson(response.data);
    }
    throw CustomFailureException(message: 'Something went wrong');
  }
  

  @override
  Future<ProfileDetailsModel> profileDetails({required String userId}) async {
    final response = await dioClient.get('/3/person/$userId');
    if (response.statusCode == 200) {
      return ProfileDetailsModel.fromJson(response.data);
    }
    throw CustomFailureException(message: 'Something went wrong');
  }


}

final profileDataSourceProvider = Provider<ProfileDatasource>((ref) {
  final dioClient = ref.read(dioProvider);
  return ProfileDatasourceImp(dioClient);
});