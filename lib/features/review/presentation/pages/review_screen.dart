import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_show/core/utils/app_extension_method.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/widgets/movie_text.dart';
import '../providers/show_review_provider.dart';

class ReviewScreen extends HookConsumerWidget {
  final String showType;
  final String id;

  const ReviewScreen({
    required this.showType, 
    required this.id,
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final reviewList = ref.watch(reviewProvider);
    final scrollController = useScrollController();

    Timer? timer;
    useEffect(() {
      void listener() {
        if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 200) {
          if (timer == null || !timer!.isActive) {
            ref.read(reviewProvider.notifier).review(id: id, type: showType);
            timer = Timer(const Duration(seconds: 2), () {});
          }
        }
      }
      scrollController.addListener(listener);
      return () {
        scrollController.removeListener(listener);
        timer?.cancel();
      };
    }, [scrollController]);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(reviewProvider.notifier).review(
          id: id,
          type: showType,
        );
      });
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: MovieText(
          title: 'Review',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: reviewList.when(
        data: (review) {
          return review.isEmpty
          ? const Center(child: Text('No data available'))
          : ListView.separated(
            controller: scrollController,
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 14, left: 16, right: 16),
            itemCount: review.length,
            itemBuilder: (context, index) {
              final reviewItem = review[index];
              return Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: MovieColors.grey.withValues(alpha: 0.1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 8,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: MovieColors.grey.withValues(alpha: 0.5)
                              ),
                              child: MovieText(
                                title: (reviewItem.author ?? '').nameAvatarLabel,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  fontSize: 14
                                ),
                              ),
                            ),
                            MovieText(
                              title: (reviewItem.author ?? '').capitalizeWord,
                              style: theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                        if (reviewItem.authorDetails?.rating != null) ...[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: MovieColors.grey.withValues(alpha: 0.5)
                            ),
                            child: Row(
                              spacing: 2.5,
                              children: [
                                MovieText(
                                  title: reviewItem.authorDetails!.rating!.formattedRating,
                                  style: theme.textTheme.bodySmall?.copyWith(),
                                ),
                                Icon(Icons.star, size: 12)
                              ],
                            ),
                          )
                        ]
                      ],
                    ),
                    if (!(reviewItem.updatedAt ?? '').isBlank) ...[
                      MovieText(
                        title: reviewItem.updatedAt!.formatDOB(hideYrs: true),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: MovieColors.grey
                        ),
                      )
                    ],
                    MovieText(
                      title: reviewItem.content ?? '',
                      maxLine: reviewItem.isReadMre
                      ? null
                      : 4,
                      overflow: reviewItem.isReadMre
                      ? TextOverflow.visible
                      : TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: MovieColors.white.withValues(alpha: 0.95)
                      ),
                    ),
                    if ((reviewItem.content ?? '').length > 185) ...[
                      InkWell(
                        onTap: () => ref.read(reviewProvider.notifier).toggleReadMore(index),
                        child: MovieText(
                          title: reviewItem.isReadMre
                          ? AppStrings.readLess
                          : AppStrings.readMore,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: MovieColors.primaryColor
                          ),
                        ),
                      ),
                    ]
                  ],
                ),
              );
            },
            separatorBuilder: (_,_) => SizedBox(height: 12),
          );
        }, 
        error: (_,_) => SizedBox(), 
        loading: () => Center(child: const CircularProgressIndicator())
      ),
    );
  }
}