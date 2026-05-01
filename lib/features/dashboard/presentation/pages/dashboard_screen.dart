import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../multi_search/presentation/pages/multi_search_screen.dart';
import '../../../../features/movie/presentation/pages/movie_screen.dart';
import '../../../../features/tv/presentation/pages/tv_screen.dart';
import '../widgets/dashboard_bottom_bar_item_list.dart';
import '/features/profile/presentation/pages/people_screen.dart';

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
        selectedItemColor: MovieColors.white,
        items: List.generate(
          bottomBarIconList.length,
          (index) {
            final bottomLabel = bottomBarIconList[index];
            return BottomNavigationBarItem(
              label: bottomLabel.title,
              icon: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                decoration: ShapeDecoration(
                  color: bottomSelectedIndex.value == index
                  ? MovieColors.primaryColor.withValues(alpha: 0.8)
                  : MovieColors.transparent,
                  shape: StadiumBorder()
                ),
                child: Icon(bottomLabel.iconData, size: 22),
              )
            );
          }
        ),
      ),
    );
  }
}