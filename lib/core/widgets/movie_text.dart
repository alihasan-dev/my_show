import 'package:flutter/material.dart';

class MovieText extends StatelessWidget {
  final String title;
  final TextStyle? style;
  final Function()? onTap;
  final int? maxLine;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  const MovieText({
    required this.title,
    this.onTap,
    this.style,
    this.maxLine,
    this.overflow,
    this.textAlign,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        title,
        textAlign: textAlign,
        maxLines: maxLine,
        overflow: overflow,
        style: style
      ),
    );
  }
}