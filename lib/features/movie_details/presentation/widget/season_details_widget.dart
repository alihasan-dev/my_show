import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/widgets/movie_text.dart';

class SeasonDetailsWidget extends HookConsumerWidget {
  
  final String seasonId;
  final String seasonNumber;
  
  const new({
    required this.seasonId,
    required this.seasonNumber,
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: MovieText(
                title: 'Seasson - $seasonNumber',
                style: theme.bodyMedium?.copyWith(
                  color: MovieColors.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(-6, 0),
              child: CloseButton()
            ),
          ],
        ),
      ],
    );
  }
}