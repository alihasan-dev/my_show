import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/features/profile/domain/entities/popular_people_entity.dart';
import '/features/profile/domain/usecases/popular_people_usecase.dart';
import 'package:riverpod/legacy.dart';

class PopularPeopleNotifier extends StateNotifier<AsyncValue<PopularPeopleEntity>> {

  final PopularPeopleUsecase popularPeopleUsecase;
  int pageCount = 1;
  List<People> popularPeopleList = [];

  PopularPeopleNotifier(this.popularPeopleUsecase) : super(AsyncValue.loading());

  Future<AsyncValue<PopularPeopleEntity>> popularPeople() async {
    final result = await popularPeopleUsecase.popularPeople(pageCount: pageCount);
    result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (entity) {
        if ((entity.results ?? []).isNotEmpty) pageCount+=1;
        popularPeopleList.addAll(entity.results ?? []);
        entity.results = popularPeopleList;
        state = AsyncValue.data(entity);
      },
    );
    return state;
  }
}

final popularPeopleProvider = StateNotifierProvider.autoDispose<PopularPeopleNotifier, AsyncValue<PopularPeopleEntity>>((ref) {
  ref.keepAlive();
  return PopularPeopleNotifier(ref.read(peopleUsecaseProvider));
});