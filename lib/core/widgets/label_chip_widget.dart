import 'package:flutter/material.dart';
import 'package:my_show/core/utils/app_extension_method.dart';
import '../constants/movie_colors.dart';

class LabeChipWidget extends StatelessWidget {

  final IconData icon;
  final String label;
  final Function()? onTap;

  const new({
    super.key,
    required this.icon,
    required this.label,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    if (label.isBlank) return SizedBox.shrink();
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6
        ),
        decoration: ShapeDecoration(
          color: MovieColors.white.withValues(alpha: 0.1),
          shape: StadiumBorder()
        ),
        child: Row(
          spacing: 2,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: MovieColors.white.withValues(alpha: 0.7),
              size: 20,
            ),
            const SizedBox(height: 5),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: MovieColors.white.withValues(alpha: 0.7),
                fontSize: 12,
                height: 1.25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}