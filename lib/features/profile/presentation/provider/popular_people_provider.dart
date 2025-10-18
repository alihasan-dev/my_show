import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/legacy.dart';
import '../../domain/entities/popular_people_entity.dart';
import '../../domain/usecases/popular_people_usecase.dart';

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
        popularPeopleList.addAll(entity.results ?? []);
        entity.results = popularPeopleList;
        state = AsyncValue.data(entity);
        pageCount+=1;
      },
    );
    return state;
  }
}

final popularPeopleProvider = StateNotifierProvider.autoDispose<PopularPeopleNotifier, AsyncValue<PopularPeopleEntity>>((ref) {
  ref.keepAlive();
  return PopularPeopleNotifier(ref.read(peopleUsecaseProvider));
});