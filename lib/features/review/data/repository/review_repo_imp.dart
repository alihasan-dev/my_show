import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_show/core/utils/custom_exception.dart';
import 'package:my_show/features/review/domain/entities/review_entity.dart';
import '../../../../core/network/check_connectivity.dart';
import '../../domain/repository/review_repository.dart';
import '../datasource/review_datasource.dart';

class ReviewRepoImp implements ReviewRepository {

  final ReviewRemoteDatasource reviewRemoteDatasource;
  final CheckConnectivity connectivity;

  ReviewRepoImp(this.reviewRemoteDatasource, this.connectivity);

  @override
  Future<Either<CustomFailureException, List<ReviewEntity>>> review({required String id, required String type, required int page}) async {
    if (await connectivity.hasConnection) {
      final response = await reviewRemoteDatasource.review(id: id, type: type, page: page);
      final reviewList = response.results?.map((e) {
        return ReviewEntity(
          author: e.author,
          content: e.content,
          authorDetails: AuthorDetails(
            name: e.authorDetails?.name,
            username: e.authorDetails?.username,
            avatarPath: e.authorDetails?.avatarPath,
            rating: e.authorDetails?.rating
          ),
          createdAt: e.createdAt,
          updatedAt: e.updatedAt,
          id: e.id,
          url: e.url
        );
      }).toList();
      return Right(reviewList ?? []);
    } else {
      return Left(CustomFailureException(
        message: 'Data does not found'
      ));
    }
  }

}


final reviewRepoProvider = Provider<ReviewRepository>((ref) {
  final connection = ref.read(connectivityProvider);
  final movieDetailsDataProvider = ref.read(reviewRemoteDataSourceProvider);
  return ReviewRepoImp(movieDetailsDataProvider, connection);
});