import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_show/features/review/presentation/widgets/review_card.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/no_data_widget.dart';
import '../../../search/presentation/widgets/search_shimmer_widget.dart';
import '../providers/show_review_provider.dart';
class ReviewScreen extends HookConsumerWidget {
  final String showType;
  final String id;
  final String title;

  const ReviewScreen({
    required this.showType, 
    required this.id,
    required this.title,
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        scrolledUnderElevation: 0,
        centerTitle: false,
        title: Text(
          'Review  |  $title',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: reviewList.when(
        data: (review) {
          if (review.isEmpty) {
            return NoDataWidget(
              icon: Icons.star_half_rounded,
              title: 'No review found',
              subtitle: 'Review aren\'t available right now.\nPlease try again later.',
              onRetry: () => ref.read(reviewProvider.notifier).resetReview(
                id: id,
                type: showType,
              )
            );
          }

          review.sort((a, b) {
            final first = a.updatedAt ?? '';
            final second = b.updatedAt ?? '';
            if (first.isBlank && second.isBlank) return 0;
            if (first.isBlank) return 1;
            if (second.isBlank) return -1;
            final firstDate = DateTime.tryParse(first);
            final secondDate = DateTime.tryParse(second);
            // Invalid dates also go to the end
            if (firstDate == null && secondDate == null) return 0;
            if (firstDate == null) return 1;
            if (secondDate == null) return -1;
            return secondDate.compareTo(firstDate);
          });

          return ListView.separated(
            controller: scrollController,
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 26, left: 16, right: 16),
            itemCount: review.length,
            itemBuilder: (_, index) {
              final reviewItem = review[index];
              return ReviewCard(
                reviewItem: reviewItem,
                onTapReadMore: () {
                  ref.read(reviewProvider.notifier).toggleReadMore(index);
                },
              );
            },
            separatorBuilder: (_, _) => SizedBox(height: 8),
          );
        }, 
        error: (_, _) => NoDataWidget(
          icon: Icons.star_half_rounded,
          title: 'No review found',
          subtitle: 'Review aren\'t available right now.\nPlease try again later.',
          onRetry: () => ref.read(reviewProvider.notifier).resetReview(
            id: id,
            type: showType,
          )
        ), 
        loading: () => SearchShimmerWidget(
          height: 110, 
          padding: EdgeInsets.symmetric(horizontal: 16),
          radius: 16,
        ),
      ),
    );
  }
}