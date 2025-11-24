import 'package:dartz/dartz.dart';
import '/core/utils/custom_exception.dart';
import '/features/profile/domain/entities/popular_people_entity.dart';

abstract interface class PeopleRepository {

  Future<Either<CustomFailureException, PopularPeopleEntity>> popularPeople({required int pageCount});

}