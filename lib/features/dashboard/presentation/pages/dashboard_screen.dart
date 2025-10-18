import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../features/movie/presentation/pages/movie_screen.dart';
import '../../../../features/tv/presentation/pages/tv_screen.dart';
import '../../../profile/presentation/pages/people_screen.dart';

class DashboardScreen extends HookConsumerWidget {

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomSelectedIndex = useState<int>(0);
    final widgetList = [
      MoviesScreen(),
      TvScreen(),
      PeopleScreen()
    ];
    return Scaffold(
      body: widgetList[bottomSelectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelectedIndex.value,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (value) {
          bottomSelectedIndex.value = value;
        },
        items: [
          BottomNavigationBarItem(
            label: 'Movies',
            icon: Icon(Icons.movie_outlined)
          ),
          BottomNavigationBarItem(
            label: 'TV Show',
            icon: Icon(Icons.tv)
          ),
          BottomNavigationBarItem(
            label: 'People',
            icon: Icon(Icons.groups_2)
          )
        ],
      ),
    );
  }
}