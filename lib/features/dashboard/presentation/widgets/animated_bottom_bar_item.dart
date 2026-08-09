import 'package:flutter/material.dart';

import '../../../../core/constants/movie_colors.dart';

class AnimatedBottomBarItem extends StatelessWidget {
  final IconData icon;
  final bool isSelected;

  const AnimatedBottomBarItem({
    super.key,
    required this.icon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutCubic,
      padding: EdgeInsets.symmetric(
        horizontal: isSelected ? 22 : 15,
        vertical: 7,
      ),
      decoration: ShapeDecoration(
        color: isSelected
            ? MovieColors.primaryColor.withValues(alpha: 0.85)
            : Colors.transparent,
        shape: const StadiumBorder(),
      ),
      child: AnimatedScale(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOutBack,
        scale: isSelected ? 1.15 : 1.0,
        child: Icon(
          icon,
          size: 22,
          color: MovieColors.white,
        ),
      ),
    );
  }
}