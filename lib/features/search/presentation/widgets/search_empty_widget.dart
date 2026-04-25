import 'package:flutter/material.dart';
import '../../../../core/widgets/movie_text.dart';

class SearchEmptyWidget extends StatelessWidget {
  const SearchEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final name = ModalRoute.of(context)?.settings.name ?? "";
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.movie_filter_outlined, size: 80, color: theme.colorScheme.onSurface.withValues(alpha: 0.3)),
          SizedBox(height: 12),
          MovieText(title: "No results found for '$name'", style: theme.textTheme.titleMedium),
          SizedBox(height: 8),
          MovieText(title: "Try a different keyword", style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurface.withValues(alpha: 0.5))),
        ],
      ),
    );
  }
}