import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/movie_colors.dart';
import '../../../../core/utils/app_extension_method.dart';
import '../../../../core/widgets/movie_image_widget.dart';
import '../../../../core/widgets/movie_text.dart';

class RecentSearchTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String mediaType;
  final VoidCallback? onTap;
  final VoidCallback? onRemove;

  const RecentSearchTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.mediaType,
    this.onTap,
    this.onRemove,
  });

  Color get badgeColor {
    switch (mediaType.toLowerCase()) {
      case 'movie':
        return const Color(0xff2EC5FF);
      case 'tv':
      case 'tv show':
        return const Color(0xffFFB347);
      case 'person':
        return const Color(0xff67D76B);
      default:
        return Colors.grey;
    }
  }

  String get getSubTitle {
    switch (mediaType.toLowerCase()) {
      case 'person':
        return 'Person • $subtitle';
      case 'movie':
        return 'Movie • ${subtitle.formatDOB(hideYrs: true)}';
      case 'tv':
      case 'tv show':
        return 'TV Show • ${subtitle.formatDOB(hideYrs: true)}';
      default:
        return '-';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 110,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: MovieColors.grey.withValues(alpha: 0.1),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            MovieImageWidget(
              imagePath: imageUrl.generateImageURL,
              width: 100,
              height: double.maxFinite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8)
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 10.0,
                  right: 8.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 11,
                            vertical: 5,
                          ),
                          decoration: ShapeDecoration(
                            color: badgeColor,
                            shape: StadiumBorder()
                          ),
                          child: Text(
                            mediaType.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(
                          splashRadius: 18,
                          onPressed: onRemove,
                          tooltip: AppStrings.remove,
                          visualDensity: VisualDensity.compact,
                          icon: const Icon(
                            Icons.close_rounded,
                            size: 20,
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    MovieText(
                      title: title,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: MovieColors.textPrimary
                      ),
                      maxLine: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    MovieText(
                      title: getSubTitle,
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontSize: 13,
                        color: MovieColors.grey
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}