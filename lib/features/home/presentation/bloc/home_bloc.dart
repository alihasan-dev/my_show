import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  HomeBloc() : super(HomeInitialState()) {
    on<GetAllTrendingMovieEvent>(_getAllTrendingMovieEvent);
  }

  Future<void> _getAllTrendingMovieEvent(GetAllTrendingMovieEvent event, Emitter emit) async {

  }
  
}