import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/people_repository_imp.dart';
import '../entities/popular_people_entity.dart';
import '../repository/people_repository.dart';

class PopularPeopleUsecase {

  final PeopleRepository peopleRepository;

  PopularPeopleUsecase(this.peopleRepository);

  Future<Either<CustomFailureException, PopularPeopleEntity>> popularPeople({required int pageCount}) async {
    return await peopleRepository.popularPeople(pageCount: pageCount);
  }
}

final peopleUsecaseProvider = Provider<PopularPeopleUsecase>((ref) {
  return PopularPeopleUsecase(ref.read(peopleRepoProvider));
});

