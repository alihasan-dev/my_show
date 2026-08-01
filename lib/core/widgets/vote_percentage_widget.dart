import 'package:flutter/material.dart';
import '../../core/widgets/movie_text.dart';
import '../constants/movie_colors.dart';
class VotePercentageWidget extends StatelessWidget {

  final double votePercent;
  // final String title;
  final double width;
  final double height;
  final double yTransform;
  
  const VotePercentageWidget({
    required this.votePercent,
    // this.title = '',
    this.height = 36,
    this.width = 36,
    this.yTransform = 19,
    super.key
  }) : assert(votePercent >= 0.0 && votePercent <= 1.0, 'Vote percentage should only lie between >= 0.0 and <= 1.0');

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(3.0),
      transform: Matrix4.translationValues(0, yTransform, 0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: MovieColors.black.withValues(alpha: 0.9),
        shape: BoxShape.circle
      ),
      child: Stack(
        children: [
          CircularProgressIndicator(
            value: votePercent,
            strokeWidth: 2.4,
            strokeCap: StrokeCap.round,
            color: _getRatingColor(votePercent),
            backgroundColor: MovieColors.grey,
          ),
          Align(
            alignment: Alignment.center,
            child: MovieText(
              title: (votePercent * 100).toStringAsFixed(0),
              // title: title,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontSize: 10,
                color: MovieColors.white
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getRatingColor(double rating) {
    // Clamp to ensure the value is between 0.0 and 1.0
    rating = rating.clamp(0.0, 1.0);

    if (rating >= 0.90) {
      return const Color(0xFF2E7D32); // Dark Green
    } else if (rating >= 0.80) {
      return const Color(0xFF43A047); // Green
    } else if (rating >= 0.70) {
      return const Color(0xFF7CB342); // Light Green
    } else if (rating >= 0.60) {
      return const Color(0xFFFDD835); // Yellow
    } else if (rating >= 0.50) {
      return const Color(0xFFFFB300); // Amber
    } else if (rating >= 0.40) {
      return const Color(0xFFFB8C00); // Orange
    } else if (rating >= 0.30) {
      return const Color(0xFFF4511E); // Deep Orange
    } else {
      return const Color(0xFFD32F2F); // Red
    }
  }
}