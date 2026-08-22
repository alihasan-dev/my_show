import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:my_show/core/constants/movie_colors.dart';
import 'package:my_show/core/widgets/custom_gradient_button.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/movie_text.dart';
import '../../domain/entities/review_entity.dart';

class ReviewCard extends StatelessWidget {
  final ReviewEntity reviewItem;
  final Function()? onTapReadMore;

  const ReviewCard({
    super.key,
    required this.reviewItem,
    this.onTapReadMore
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: const Color(0xff232323),
      elevation: 0,
      margin: const EdgeInsets.only(left: 2, right: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// HEADER
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MovieColors.teal
                  ),
                  child: MovieText(
                    title: (reviewItem.author ?? '').handleEmptyName.nameAvatarLabel,
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontSize: 15
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MovieText(
                        title: (reviewItem.author ?? '').capitalizeWord.handleEmptyName,
                        maxLine: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelLarge?.copyWith(
                          fontSize: 16
                        ),
                      ),
                      if (!(reviewItem.updatedAt ?? '').isBlank) ...[
                        const SizedBox(height: 3),
                        Row(
                          spacing: 5,
                          children: [
                            Icon(
                              Icons.calendar_today_outlined,
                              size: 12,
                              color: Colors.white54,
                            ),
                            Text(
                              reviewItem.updatedAt!.formatDOB(hideYrs: true),
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ]
                    ],
                  ),
                ),
                if (reviewItem.authorDetails?.rating != null) ...[
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      spacing: 4,
                      children: [
                        Text(
                          reviewItem.authorDetails!.rating!.formattedRating,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        const Icon(
                          Icons.star,
                          color: Color(0xffF5C518),
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Divider(color: Colors.white12),
            ),
            /// REVIEW
            Linkify(
              text: reviewItem.content ?? '',
              linkStyle: TextStyle(
                decoration: TextDecoration.none,
                color: const Color(0xff2FD7D3)
              ),
              style: TextStyle(fontSize: 13),
              options: const LinkifyOptions(
                humanize: false,
                removeWww: false,
              ),
              maxLines: reviewItem.isReadMre
              ? null
              : 4,
              overflow: reviewItem.isReadMre
              ? TextOverflow.visible
              : TextOverflow.ellipsis,
              onOpen: (link) async {
                await launchUrl(
                  Uri.parse(link.url),
                  mode: LaunchMode.externalApplication,
                );
              },
            ),
            if ((reviewItem.content ?? '').length > 185)...[
              const SizedBox(height: 12),
              CustomGradientButton(
                label: reviewItem.isReadMre
                ? AppStrings.readLess
                : AppStrings.readMore,
                textStyle: theme.textTheme.bodySmall?.copyWith(
                  color: MovieColors.white.withValues(alpha: 0.8)
                ),
                radius: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    color: MovieColors.white.withValues(alpha: 0.25),
                    width: 1.0,
                  ),
                ),
                onTap: onTapReadMore
              ),
            ]
          ],
        ),
      ),
    );
  }
}