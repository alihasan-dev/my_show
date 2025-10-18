import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_show/features/home/presentation/pages/home_screen.dart';
import '../../features/home/presentation/bloc/home_bloc.dart';

class AppRoutes {

  AppRoutes._();

  static final String initialRoute = '/';
  static final String homeScreen = '/homeScreen';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: initialRoute, redirect: (context, state) => homeScreen),
      GoRoute(
        path: homeScreen, 
        builder: (context, state) {
          return BlocProvider(create: (_) => HomeBloc()..add(GetAllTrendingMovieEvent()), child: HomeScreen());
        },
      )
    ]
  );
}