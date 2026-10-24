import 'package:flutter/material.dart';
import 'package:my_show/core/utils/app_extension_method.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/widgets/movie_text.dart';

class SearchEmptyWidget extends StatelessWidget {
  final String? searchQuery;

  const SearchEmptyWidget({
    this.searchQuery,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final hasSearchQuery = !(searchQuery ?? '').isBlank;
    final theme = Theme.of(context);
    final name = ModalRoute.of(context)?.settings.name ?? "";
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            hasSearchQuery
            ? Icons.search_off_rounded
            : Icons.movie_filter_outlined, 
            size: hasSearchQuery ? 64 : 80, 
            color: theme.colorScheme.onSurface.withValues(alpha: 0.3)
            // color: MovieColors.grey
          ),
          SizedBox(height: 12),
          MovieText(
            title: hasSearchQuery
            ? "No matches for $searchQuery."
            : "No results found for '$name'",
            style: theme.textTheme.bodyLarge?.copyWith(
              color: MovieColors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: hasSearchQuery ? 12 : 8),
          MovieText(
            title: hasSearchQuery
            ? 'Check the spelling or try another search.'
            : "Try a different keyword",
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.5)
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}