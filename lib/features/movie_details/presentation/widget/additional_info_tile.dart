import 'package:flutter/material.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/widgets/movie_text.dart';

class AdditionalInfoTile extends StatelessWidget {
  
  final String title;
  final String value;
  final Widget? widget;
  
  const AdditionalInfoTile({
    this.title = '',
    this.value = '',
    this.widget,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: MovieText(
              title: title,
              style: TextStyle(color: MovieColors.textDisabled),
            ),
          ),
          Expanded(
            child: widget != null
            ? widget!
            : MovieText(
              title: value,
              textAlign: TextAlign.start,
              style: TextStyle(color: MovieColors.textSecondary),
            ),
          ),
        ],
      ),
    );
  }
}