import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/legacy.dart';
import '../../domain/entities/review_entity.dart';
import '../../domain/usecases/review_usecase.dart';

class ReviewNotifier extends StateNotifier<AsyncValue<List<ReviewEntity>>> {

  final ReviewUsecase reviewUsecase;
  int pageCount = 1;
  bool canCallAPI = true;
  List<ReviewEntity> reviewList = [];

  ReviewNotifier(this.reviewUsecase) : super(AsyncValue.loading());


  Future<AsyncValue<List<ReviewEntity>>> review({required String id, required String type}) async {
    if (!canCallAPI) {
      state = AsyncValue.data(reviewList);
      return state;
    }
    if (reviewList.isEmpty) state = const AsyncValue.loading();
    final result = await reviewUsecase.review(id: id, type: type, page: pageCount);
    result.fold(
      (failure) {
        if (reviewList.isNotEmpty) return;
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (review) {
        if (review.isNotEmpty) {
          pageCount+=1;
        } else {
          canCallAPI = false;
        }
        reviewList.addAll(review);
        state = AsyncValue.data(reviewList);
      },
    );
    return state;
  }

  void resetReview() {
    reviewList.clear();
    state = AsyncValue.error('Reset the search list', StackTrace.current);
  }

  void toggleReadMore(int index) {
    if (reviewList.length <= index) return;
    reviewList[index].isReadMre = !reviewList[index].isReadMre;
    state = AsyncValue.data(reviewList);
  }

}

final reviewProvider = StateNotifierProvider.autoDispose<ReviewNotifier, AsyncValue<List<ReviewEntity>>>((ref) {
  return ReviewNotifier(ref.read(reviewUseCaseProvider));
});