import 'package:riverpod/riverpod.dart';
import '../../domain/entities/profile_external_id_entity.dart';
import '../../domain/usecases/profile_details_usecase.dart';

final profileExternalIdProvider = FutureProvider.autoDispose.family<ProfileExternalIdEntity, String>((ref, userId) async {
  final profileDetailsUseCase = ref.read(profileDetailsUseCaseProvider);
  final response = await profileDetailsUseCase.profileExternalIds(userId: userId);
  return response.fold(
    (left) => throw left, 
    (right) => right
  );
});