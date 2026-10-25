import 'package:flutter/material.dart';
import '../../../../core/constants/movie_colors.dart';

class MovieActionWidget extends StatelessWidget {
  
  const MovieActionWidget({
    super.key, 
    required this.icon,
    required this.label,
    this.iconColor,
    this.onTap
  });

  final IconData icon;
  final String label;
  final Function()? onTap;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
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
              color: iconColor ?? MovieColors.white.withValues(alpha: 0.7),
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