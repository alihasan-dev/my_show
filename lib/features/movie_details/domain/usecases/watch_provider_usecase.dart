import 'package:dartz/dartz.dart';
import 'package:riverpod/riverpod.dart';
import '../../../../core/utils/custom_exception.dart';
import '../../data/repository/movie_details_repo_imp.dart';
import '../entities/watch_provider_entity.dart';
import '../repository/movie_details_repository.dart';

class WatchProviderUsecase {

  final MovieDetailsRepository movieDetailsRepository;

  WatchProviderUsecase(this.movieDetailsRepository);

  Future<Either<CustomFailureException, WatchProviderEntity>> watchProvider({required String id, required String type}) async {
    return await movieDetailsRepository.watchProvider(id: id, type: type);
  }
}

final watchProviderUseCaseProvider = Provider<WatchProviderUsecase>((ref) {
  final movieDetailRepoProvider = ref.read(movieDetailsRepoProvider);
  return WatchProviderUsecase(movieDetailRepoProvider);
});