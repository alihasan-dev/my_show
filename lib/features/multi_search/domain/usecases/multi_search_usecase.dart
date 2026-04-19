import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/repository/multi_search_repo_imp.dart';
import '../repository/multi_search_repository.dart';
import '/core/utils/custom_exception.dart';
import '/features/search/domain/entities/search_movies_keyword_entity.dart';

class MultiSearchUsecase {
  final MultiSearchRepository multiSearchRepository;

  MultiSearchUsecase(this.multiSearchRepository);

  Future<Either<CustomFailureException, SearchMoviesKeywordEntity>> multiSearch({required String query, required int pageCount}) async {
    return await multiSearchRepository.multiSearch(query: query, pageCount: pageCount);
  }
}

final multiSearchUseCaseProvider = Provider<MultiSearchUsecase>((ref) {
  return MultiSearchUsecase(ref.read(multiSearchRepoProvider));
});