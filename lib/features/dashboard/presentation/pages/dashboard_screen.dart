import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../multi_search/presentation/pages/multi_search_screen.dart';
import '/features/profile/presentation/pages/people_screen.dart';
import '../../../../features/movie/presentation/pages/movie_screen.dart';
import '../../../../features/tv/presentation/pages/tv_screen.dart';

class DashboardScreen extends HookConsumerWidget {

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomSelectedIndex = useState<int>(0);
    final widgetList = [
      const MoviesScreen(),
      const TvScreen(),
      const PeopleScreen(),
      const MultiSearchScreen()
    ];
    return Scaffold(
      body: widgetList[bottomSelectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomSelectedIndex.value,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        onTap: (value) => bottomSelectedIndex.value = value,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: AppStrings.movies,
            icon: Icon(Icons.movie_outlined)
          ),
          BottomNavigationBarItem(
            label: AppStrings.tvShows,
            icon: Icon(Icons.tv)
          ),
          BottomNavigationBarItem(
            label: AppStrings.people,
            icon: Icon(Icons.groups_2)
          ),
          BottomNavigationBarItem(
            label: AppStrings.search,
            icon: Icon(Icons.search)
          )
        ],
      ),
    );
  }
}