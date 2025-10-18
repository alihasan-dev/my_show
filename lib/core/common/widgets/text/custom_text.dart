import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  
  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final TextStyle? style;
  final double? fontSize;
  final FontWeight? fontWeight;
  
  const CustomText(this.title,{
    this.color,
    this.textAlign,
    this.textDecoration,
    this.fontSize,
    this.style,
    this.fontWeight,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      title,
      textAlign: textAlign,
      style: theme.textTheme.bodyMedium?.copyWith(
        color: color,
        decoration: textDecoration,
        fontSize: fontSize,
        fontWeight: fontWeight
      )
    );
  }
}