import '/features/profile/domain/entities/profile_details_entity.dart';
import 'package:riverpod/riverpod.dart';
import '../../domain/usecases/profile_details_usecase.dart';

final profileDetailsProvider = FutureProvider.autoDispose.family<ProfileDetailsEntity, String>((ref, userId) async {
  final profileDetailsUseCase = ref.read(profileDetailsUseCaseProvider);
  final response = await profileDetailsUseCase.profileDetails(userId: userId);
  return response.fold(
    (left) => throw left, 
    (right) => right
  );
});