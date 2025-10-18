import 'package:flutter/material.dart';
import '../../core/widgets/movie_text.dart';
import '../constants/movie_colors.dart';

class VotePercentageWidget extends StatelessWidget {

  final double votePercent;
  final String title;
  final double width;
  final double height;
  final double yTransform;
  
  const VotePercentageWidget({
    required this.votePercent,
    this.title = '',
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
            color: MovieColors.greenAccent,
            backgroundColor: MovieColors.grey,
          ),
          Align(
            alignment: Alignment.center,
            child: MovieText(
              title: title,
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
}