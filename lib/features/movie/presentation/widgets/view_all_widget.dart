import 'package:flutter/material.dart';

import '../../../../core/constants/movie_colors.dart';
import '../../../../core/widgets/movie_text.dart';

class ViewAllWidget extends StatelessWidget {
  
  const ViewAllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 200,
      decoration: BoxDecoration(
        color: MovieColors.grey.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          MovieText(
            title: 'View All',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: MovieColors.white,
              shape: BoxShape.circle
            ),
            child: Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}