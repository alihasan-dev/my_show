import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/review_repo_imp.dart';
import '../entities/review_entity.dart';
import '../repository/review_repository.dart';

class ReviewUsecase {

  final ReviewRepository reviewRepository;

  ReviewUsecase(this.reviewRepository);

  Future<Either<CustomFailureException, List<ReviewEntity>>> review({required String id, required String type, required int page}) async {
    return await reviewRepository.review(id: id, type: type, page: page);
  }
}

final reviewUseCaseProvider = Provider<ReviewUsecase>((ref) {
  final reviewRepositoryProvider = ref.read(reviewRepoProvider);
  return ReviewUsecase(reviewRepositoryProvider);
});