import 'package:flutter/material.dart';
import 'package:my_show/core/widgets/movie_image_widget.dart';
import 'package:my_show/core/widgets/movie_text.dart';
import '../constants/movie_colors.dart';
import '../utils/app_extension_method.dart';

class MovieTvSearchWidget extends StatelessWidget {
  
  final Function()? onTap;
  final String imagePath;
  final String title;
  final String releaseDate;
  final bool hideYrs;
  final String overview;
  final int maxLine;

  const MovieTvSearchWidget({
    super.key,
    this.onTap,
    this.imagePath = '',
    this.title = '',
    this.releaseDate = '',
    this.hideYrs = true,
    this.overview = '',
    this.maxLine = 4,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 140,
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
              imagePath: imagePath.generateImageURL,
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
                    MovieText(
                      title: title,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: MovieColors.textPrimary
                      ),
                      maxLine: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    MovieText(
                      title: releaseDate.formatDOB(hideYrs: hideYrs),
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: MovieColors.grey
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: MovieText(
                        title: overview,
                        overflow: TextOverflow.ellipsis,
                        maxLine: maxLine,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: MovieColors.textSecondary
                        ),
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