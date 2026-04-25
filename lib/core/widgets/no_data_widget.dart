import 'package:flutter/material.dart';
import 'package:my_show/core/widgets/custom_gradient_button.dart';
import '../constants/app_strings.dart';
import '../constants/movie_colors.dart';

class NoDataWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onRetry;

  const NoDataWidget({
    super.key,
    this.icon = Icons.people_outline_rounded,
    this.title = 'No Data Available',
    this.subtitle = 'We couldn\'t find anything to show right now.',
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: MovieColors.white.withValues(alpha: 0.05),
                border: Border.all(
                  color: MovieColors.white.withValues(alpha: 0.08),
                ),
              ),
              child: Icon(
                icon,
                size: 56,
                color: MovieColors.white.withValues(alpha: 0.25),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: MovieColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                color: MovieColors.textSecondary,
              ),
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 24),
              CustomGradientButton(
                onTap: onRetry,
                label: AppStrings.retry,
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
                textStyle: theme.textTheme.bodyMedium?.copyWith(
                  color: MovieColors.white.withValues(alpha: 0.8)
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
