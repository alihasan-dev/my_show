import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_show/core/constants/app_strings.dart';
import 'package:my_show/core/constants/movie_colors.dart';
import 'package:my_show/core/utils/app_enums.dart';
import 'package:my_show/core/utils/app_extension_method.dart';
import 'package:my_show/core/widgets/movie_text.dart';
import '../../../multi_search/presentation/pages/multi_search_screen.dart';
import '../../../../features/movie/presentation/pages/movie_screen.dart';
import '../../../../features/tv/presentation/pages/tv_screen.dart';
import '../widgets/bottom_animated_bar.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobileOrTablet = constraints.maxWidth.screenType == ScreenType.mobile || constraints.maxWidth.screenType == ScreenType.tablet;
        return Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: isMobileOrTablet ? 0.0 : 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Constrained Header
                if (!isMobileOrTablet) ...[
                  Header(
                    selectedIndex: bottomSelectedIndex.value,
                    onTap: (index) {
                      bottomSelectedIndex.value = index;
                    },
                  )
                ],
                // 2. Constrained Body Area
                Expanded(
                  child: widgetList[bottomSelectedIndex.value]
                ),
              ],
            ),
          ),
          // body: Align(
          //   alignment: Alignment.topCenter,
          //   child: ConstrainedBox(
          //     constraints: const BoxConstraints(maxWidth: 1300),
          //     child: Container(
          //       padding: EdgeInsets.symmetric(horizontal: isMobileOrTablet ? 0.0 : 16.0),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           // 1. Constrained Header
          //           if (!isMobileOrTablet) ...[
          //             Header(
          //               selectedIndex: bottomSelectedIndex.value,
          //               onTap: (index) {
          //                 bottomSelectedIndex.value = index;
          //               },
          //             )
          //           ],
          //           // 2. Constrained Body Area
          //           Expanded(
          //             child: widgetList[bottomSelectedIndex.value]
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          bottomNavigationBar: !isMobileOrTablet
          ? null
          : ValueListenableBuilder<int>(
            valueListenable: bottomSelectedIndex,
            builder: (_, selectedIndex, _) {
              return MovieBottomNavigation(
                selectedIndex: selectedIndex,
                onChanged: (index) {
                  bottomSelectedIndex.value = index;
                },
              );
            },
          ),
        );
      }
    );
  }
}

class Header extends HookConsumerWidget {

  final int selectedIndex;
  final Function(int)? onTap;

  const Header({
    this.selectedIndex = 0,
    this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: SizedBox(
        height: 54,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 24,
              children: [
                MovieText(title: AppStrings.appName),
                SizedBox(width: 5),
                ...List.generate(
                  bottomBarIconList.length, 
                  (index) {
                    final item = bottomBarIconList[index];
                    final isSelected = selectedIndex == index;
                    return InkWell(
                      onTap: () => onTap?.call(index),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(
                            color: isSelected
                            ?MovieColors.primaryColor
                            :MovieColors.transparent,
                            width: 1.4
                          ))
                        ),
                        child: MovieText(
                          title: item.title,
                          style: TextStyle(
                            fontSize: 13,
                            color: isSelected
                            ?MovieColors.white
                            :MovieColors.grey
                          ),
                        ),
                      ),
                    );
                  }
                ),
              ],
            ),
            // InkWell(
            //   onTap: () {},
            //   borderRadius: BorderRadius.circular(20),
            //   child: Container(
            //     width: 360,
            //     padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            //     decoration: ShapeDecoration(
            //       color: MovieColors.grey.withValues(alpha: 0.1),
            //       shape: StadiumBorder()
            //     ),
            //     child: Row(
            //       spacing: 10,
            //       children: [
            //         Icon(
            //           Icons.search, 
            //           size: 20,
            //           color: MovieColors.grey.withValues(alpha: 0.9)
            //         ),
            //         Expanded(
            //           child: MovieText(
            //             title: searchHint,
            //             maxLine: 1,
            //             overflow: TextOverflow.ellipsis,
            //             style: TextStyle(
            //               fontSize: 13,
            //               color: MovieColors.grey.withValues(alpha: 0.9)
            //             ),
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            Row(
              children: [
                TextButton.icon(
                  onPressed: () {  }, 
                  label: MovieText(
                    title: 'Watchlist',
                    style: TextStyle(
                      fontSize: 13,
                      color: MovieColors.white
                    ),
                  ),
                  icon: Icon(
                    Icons.bookmark_border, 
                    size: 18, 
                    color: MovieColors.white
                  ),
                ),
                TextButton.icon(
                  onPressed: () {  }, 
                  label: MovieText(
                    title: 'Favorite',
                    style: TextStyle(
                      fontSize: 13,
                      color: MovieColors.white
                    ),
                  ),
                  icon: Icon(
                    Icons.favorite_border, 
                    size: 18, 
                    color: MovieColors.white
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }


}