import 'package:flutter/material.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/widgets/movie_text.dart';

class ProfileInfoTitle extends StatelessWidget {
  
  final String title;
  final String value;
  
  const ProfileInfoTitle({
    this.title = '',
    this.value = '',
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
              style: TextStyle(
                color: MovieColors.textSecondary
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: MovieText(
              title: value,
              textAlign: TextAlign.end,
              style: TextStyle(color: MovieColors.textPrimary),
            ),
          ),
        ],
      ),
    );
  }
}