import 'package:go_router/go_router.dart';
import '../../features/dashboard/presentation/pages/dashboard_screen.dart';
import '../../features/movie/presentation/pages/movie_screen.dart';
import '../../features/movie_details/presentation/page/movie_details_screen.dart';
import '../../features/profile/presentation/pages/profile_screen.dart';
import '../../features/view_all/presentation/page/view_all_screen.dart';
import '../../features/search/presentation/pages/search_movie_by_keyword_screen.dart';

class AppRoutes {

  AppRoutes._();

  static const String initialRoute = '/';
  static const String dashboard = '/dashboard';
  static const String splash = '/splash';
  static const String movie = '/movie';
  static const String movieDetails = '/movie_details';
  static const String profile = '/profile';
  static const String searchMovieByKeywordScreen = '/search_movie_by_keyword';
  static const String viewAll = '/view_all';

  static final GoRouter routes = GoRouter(
    routes: [
      GoRoute(
        path: initialRoute,
        redirect: (_,_) => splash
      ),
      GoRoute(
        path: splash,
        redirect: (_,_) => dashboard
      ),
      GoRoute(
        name: dashboard,
        path: dashboard,
        builder: (context, state) => DashboardScreen()
      ),
      GoRoute(
        path: movie,
        builder: (context, state) => MoviesScreen()
      ),
      GoRoute(
        name: movieDetails,
        path: movieDetails,
        builder: (context, state) {
          final id = state.uri.queryParameters['id']!;
          final type = state.uri.queryParameters['type']!;
          return MovieDetailsScreen(id: id, type: type);
        }
      ),
      GoRoute(
        name: profile,
        path: profile,
        builder: (context, state) {
          final userId = state.uri.queryParameters['userId']!;
          return ProfileScreen(userId: userId);
        }
      ),
      GoRoute(
        name: searchMovieByKeywordScreen,
        path: searchMovieByKeywordScreen,
        builder: (context, state) {
          final id = state.uri.queryParameters['id']!;
          final name = state.uri.queryParameters['name']!;
          final type = state.uri.queryParameters['type']!;
          return SearchMovieByKeywordScreen(
            id: int.parse(id),
            name: name,
            type: type,
          );
        }
      ),
      GoRoute(
        name: viewAll,
        path: viewAll,
        builder: (context, state) {
          final showType = state.uri.queryParameters['showType']!;
          final showCategory = state.uri.queryParameters['showCategory']!;
          return ViewAllScreen(
            showCategory: showCategory,
            showType: showType
          );
        }
      ),
    ]
  );
}