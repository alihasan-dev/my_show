import 'package:flutter/material.dart';
import 'package:my_show/core/widgets/movie_text.dart';
import '../constants/movie_colors.dart';

class CustomGradientButton extends StatelessWidget {
  final Function()? onTap;
  final EdgeInsetsGeometry padding;
  final String label;
  final TextStyle? textStyle;
  final double? width;
  final ShapeBorder? shape;
  final Widget? widget;
  final double radius;
  
  const CustomGradientButton({
    this.label = '',
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
    this.textStyle,
    this.width,
    this.shape,
    this.widget,
    this.radius = 20,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(radius),
      onTap: onTap,
      child: Container(
        padding: padding,
        width: width,
        decoration: ShapeDecoration(
          shape: shape ?? StadiumBorder(
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
        child: widget ?? MovieText(
          title: label,
          style: textStyle ?? theme.textTheme.labelMedium?.copyWith(
            color: MovieColors.white.withValues(alpha: 0.8)
          ),
        )
      ),
    );
  }
}