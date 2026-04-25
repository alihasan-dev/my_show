import 'package:flutter/material.dart';
import 'package:my_show/core/widgets/movie_text.dart';
import '../constants/movie_colors.dart';

class CustomGradientButton extends StatelessWidget {
  final Function()? onTap;
  final EdgeInsetsGeometry padding;
  final String label;
  final TextStyle? textStyle;
  
  const CustomGradientButton({
    this.label = '',
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
    this.textStyle,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: ShapeDecoration(
          shape: StadiumBorder(
            side: BorderSide(
              color: MovieColors.white.withValues(alpha: 0.25),
              width: 1.5,
            )
          ),
          gradient: LinearGradient(
            colors: [
              MovieColors.white.withValues(alpha: 0.20),
              MovieColors.white.withValues(alpha: 0.05),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: MovieText(
          title: label,
          style: textStyle ?? theme.textTheme.labelMedium?.copyWith(
            color: MovieColors.white.withValues(alpha: 0.8)
          ),
        )
      ),
    );
  }
}