import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/core/network/check_connectivity.dart';
import '/core/utils/custom_exception.dart';
import '/features/profile/data/datasource/people_datasource.dart';
import '/features/profile/domain/entities/popular_people_entity.dart';
import '/features/profile/domain/repository/people_repository.dart';

class PeopleRepositoryImp implements PeopleRepository {

  final PeopleDataSource dataSource;
  final CheckConnectivity connectivity;

  PeopleRepositoryImp(this.dataSource, this.connectivity);

  @override
  Future<Either<CustomFailureException, PopularPeopleEntity>> popularPeople({required int pageCount}) async {
    try {
      if (await connectivity.isConnected) {
        final result = await dataSource.popularPeople(pageCount: pageCount);
        return Right(PopularPeopleEntity(
          page: result.page,
          results: result.results?.map((item) {
            return People(
              adult: item.adult,
              gender: item.gender,
              id: item.id,
              knownForDepartment: item.knownForDepartment,
              name: item.name,
              originalName: item.originalName,
              popularity: item.popularity,
              profilePath: item.profilePath
            );
          }).toList(),
          totalPages: result.totalPages,
          totalResults: result.totalResults
        ));
      } else {
        return Left(CustomFailureException(message: 'No internet connection'));
      }
    } on CustomFailureException catch(e) {
      return Left(CustomFailureException(message: e.message));
    }
  }

}

final peopleRepoProvider = Provider<PeopleRepository>((ref) {
  final dataSource = ref.read(peopleDataSourceProvider);
  final connection = ref.read(connectivityProvider);
  return PeopleRepositoryImp(dataSource, connection);
});