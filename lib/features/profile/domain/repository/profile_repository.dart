import 'package:dartz/dartz.dart';
import '/core/utils/custom_exception.dart';
import '/features/profile/domain/entities/movie_credit_entity.dart';
import '/features/profile/domain/entities/profile_details_entity.dart';

abstract class ProfileRepository {

  Future<Either<CustomFailureException, MovieCreditEntity>> creditMovies({required String userId, required String type});
  
  Future<Either<CustomFailureException, ProfileDetailsEntity>> profileDetails({required String userId});
}