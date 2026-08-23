import 'package:flutter/material.dart';
import '../constants/movie_colors.dart';
import '../../core/utils/app_extension_method.dart';
import '../../core/widgets/movie_image_widget.dart';
import '../../core/widgets/movie_text.dart';

class MovieCastBanner extends StatelessWidget {

  final Function()? onTap;
  final String imagePath;
  final String title;
  final String subTitle;
  final double height;
  final double width;
  final TextStyle? textStyle;
  final double? radius;
  final EdgeInsetsGeometry? padding;
  final TextAlign? textAlign;
  final ImageErrorIconSize? errorIconSize;
  
  const MovieCastBanner({
    this.onTap,
    this.imagePath = '',
    this.title = '',
    this.subTitle = '',
    this.width = 100,
    this.height = 150,
    this.textStyle,
    this.radius,
    this.padding,
    this.textAlign,
    this.errorIconSize,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MovieImageWidget(
              imagePath: imagePath,
              height: height,
              width: double.maxFinite,
              radius: radius,
              errorIconSize: errorIconSize,
            ),
            Padding(
              padding: padding ?? const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                children: [
                  if (!title.isBlank)
                    MovieText(
                      title: title,
                      maxLine: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: textAlign,
                      style: TextStyle(fontSize: 12, color: MovieColors.textPrimary)
                    ),
                  if (!subTitle.isBlank)
                    SizedBox(
                      width: double.maxFinite,
                      child: MovieText(
                        title: subTitle,
                        maxLine: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: textAlign,
                        style: textStyle ?? TextStyle(
                          fontSize: 10, 
                          color: MovieColors.textSecondary
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}