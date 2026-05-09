import 'package:dartz/dartz.dart';
import 'package:my_show/features/review/domain/entities/review_entity.dart';
import '../../../../core/utils/custom_exception.dart';

abstract interface class ReviewRepository {

  Future<Either<CustomFailureException, List<ReviewEntity>>> review({required String id, required String type, required int page});

}