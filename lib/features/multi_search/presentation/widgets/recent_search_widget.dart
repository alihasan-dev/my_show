import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_show/core/constants/app_strings.dart';
import '../../../../core/constants/movie_colors.dart';
import '../providers/recent_search_provider.dart';
import 'recent_search_title.dart';

class RecentSearchWidget extends HookConsumerWidget {
  
  final Function(String)? onTapRecentSearch;
  
  const RecentSearchWidget({
    super.key,
    this.onTapRecentSearch
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final recentSearch = ref.watch(recentSearchProvider);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(recentSearchProvider.notifier).getRecentSearch();
      });
      return null;
    }, []);

    return recentSearch.when(
      data: (search) {
        if (search.isEmpty) return SizedBox.shrink();
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.recentSearch,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 15,
                      color: MovieColors.grey
                    )
                  ),
                  GestureDetector(
                    onTap: () => ref.read(recentSearchProvider.notifier).clearRecentSearch(),
                    child: Text(
                      AppStrings.viewAll,
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontSize: 13,
                        color: MovieColors.red
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 110,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: search.length,
                padding: EdgeInsets.zero,
                separatorBuilder: (_,_) => const SizedBox(width: 12),
                itemBuilder: (_, index) {
                  final item = search[index];
                  return RecentSearchTile(
                    imageUrl: item.posterPath,
                    title: item.title,
                    subtitle: item.subtitle,
                    mediaType: item.mediaType,
                    onTap: () => onTapRecentSearch!(item.title),
                    onRemove: () => ref.read(recentSearchProvider.notifier).removeSearch(id: item.id),
                  );
                },
              ),
            ),
          ],
        );
      }, 
      error: (_,_) => SizedBox.shrink(), 
      loading: () => SizedBox.shrink()
    );
  }
}