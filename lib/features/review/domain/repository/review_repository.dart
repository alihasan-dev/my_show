import 'package:dartz/dartz.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../../../features/review/domain/entities/review_entity.dart';
abstract interface class ReviewRepository {

  Future<Either<CustomFailureException, List<ReviewEntity>>> review({required String id, required String type, required int page});

}