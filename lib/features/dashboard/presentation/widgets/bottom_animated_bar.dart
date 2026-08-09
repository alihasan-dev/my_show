import 'package:flutter/material.dart';

import '../../../../core/constants/movie_colors.dart';
import 'dashboard_bottom_bar_item_list.dart';

class MovieBottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const MovieBottomNavigation({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  static const double itemWidth = 60;
  static const double itemSpacing = 12;

  @override
  Widget build(BuildContext context) {
    final items = bottomBarIconList;
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    return SizedBox(
      height: 65 + bottomPadding,
      // height: 65,
      child: LayoutBuilder(
        builder: (context, constraints) {
          const itemWidth = 60.0;
    const horizontalPadding = 24.0;

    final stackWidth =
        constraints.maxWidth - (horizontalPadding * 2);

    final spacing = items.length > 1
        ? (stackWidth - (items.length * itemWidth)) /
            (items.length - 1)
        : 0;

    final selectedX =
        selectedIndex * (itemWidth + spacing);

          return Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 12),
            child: Stack(
              // alignment: Alignment.centerLeft,
              children: [
                // Moving selection pill
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOutCubic,
                  left: selectedX,
                  top: 1,
                  child: Container(
                    width: itemWidth,
                    height: 38,
                    decoration: ShapeDecoration(
                      color: MovieColors.primaryColor.withValues(
                        alpha: 0.85,
                      ),
                      shape: const StadiumBorder(),
                    ),
                  ),
                ),
            
                // Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    items.length,
                    (index) {
                      final item = items[index];
                      return SizedBox(
                        width: itemWidth,
                        height: 40,
                        child: InkWell(
                          onTap: () => onChanged(index),
                          borderRadius: BorderRadius.circular(30),
                          child: Center(
                            child: AnimatedScale(
                              scale: selectedIndex == index ? 1.1 : 1.0,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeOutBack,
                              child: Icon(
                                item.iconData,
                                size: 22,
                                color: MovieColors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                )
              ],
            ),
          );
        },
      ),
    );
  }
}