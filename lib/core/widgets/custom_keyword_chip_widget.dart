import 'package:flutter/material.dart';
import '../../core/widgets/movie_text.dart';
import '../constants/movie_colors.dart';

class CustomKeywordChipWidget extends StatelessWidget {
  
  final Function()? onTap;
  final String title;
  
  const CustomKeywordChipWidget({
    this.onTap,
    this.title = '',
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 6.0,
          horizontal: 12.0
        ),
        decoration: ShapeDecoration(
          color: MovieColors.grey.withValues(alpha: 0.2),
          shape: StadiumBorder()
        ),
        child: MovieText(
          title: title
        ),
      ),
    );
  }
}