import 'package:flutter/material.dart';
import '../../../../core/constants/movie_colors.dart';

class MovieActionWidget extends StatelessWidget {
  
  const MovieActionWidget({
    super.key, 
    this.icon,
    required this.label,
    this.iconColor,
    this.onTap,
    this.padding,
    this.style,
    this.backgroundColor,
    this.iconSize
  });

  final IconData? icon;
  final String label;
  final Function()? onTap;
  final Color? iconColor;
  final EdgeInsets? padding;
  final TextStyle? style;
  final double? iconSize;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: padding ?? EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6
        ),
        decoration: ShapeDecoration(
          color: backgroundColor ??MovieColors.white.withValues(alpha: 0.1),
          shape: StadiumBorder()
        ),
        child: Row(
          spacing: 6,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                color: iconColor ?? MovieColors.white.withValues(alpha: 0.7),
                size: iconSize ?? 20,
              ),
            ],
            Text(
              label,
              textAlign: TextAlign.center,
              style: style ?? TextStyle(
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