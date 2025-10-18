import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/network/dio_provider.dart';
import '../../../../core/utils/custom_exception.dart';
import '../models/popular_people_model.dart';

abstract interface class PeopleDataSource {

  Future<PopularPeopleModel> popularPeople({required int pageCount});
}

class PeopleDatasourceImp implements PeopleDataSource {


  final Dio apiClient;

  PeopleDatasourceImp(this.apiClient);
  
  @override
  Future<PopularPeopleModel> popularPeople({required int pageCount}) async {
    final response = await apiClient.get('/3/person/popular?language=en-US&page=$pageCount');
    if (response.statusCode == 200) {
      return PopularPeopleModel.fromJson(response.data);
    } else {
      throw CustomFailureException();
    }
  }


}

final peopleDataSourceProvider = Provider<PeopleDataSource>((ref) {
  return PeopleDatasourceImp(ref.read(dioProvider));
});