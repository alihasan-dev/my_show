import 'package:dartz/dartz.dart';
import '/features/view_all/data/repository/view_all_repo_imp.dart';
import 'package:riverpod/riverpod.dart';
import '../../../../features/view_all/domain/repository/view_all_repo.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../../movie/domain/entities/trending_movie_entity.dart';

class ViewAllUsecase {

  final ViewAllRepo viewAllRepo;

  ViewAllUsecase(this.viewAllRepo);

  Future<Either<CustomFailureException, TrendingMoviesEntity>> getAllShow({
    required String showType,
    required String showCategory,
    int page = 1
  }) async {
    return await viewAllRepo.getAllShow(
      showType: showType,
      showCategory: showCategory,
      page: page
    );
  }
}

final viewAllUseCaseProvider = Provider<ViewAllUsecase>((ref) {
  return ViewAllUsecase(ref.read(viewAllRepoProvider));
});