import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../profile/domain/usecases/credit_tv_usecase.dart';
import '../../domain/entities/movie_credit_entity.dart';

final tvCreditDataProvider = FutureProvider.autoDispose.family<MovieCreditEntity, String>((ref, userId) async {
  final creditTvData = ref.read(creditTvUseCaseProvider);
  final response = await creditTvData.creditTV(userId: userId);
  return response.fold(
    (left) => throw left, 
    (right) => right
  );
});