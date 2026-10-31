import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_show/core/widgets/custom_gradient_button.dart';
import 'package:my_show/core/widgets/movie_text.dart';
import '../constants/movie_colors.dart';

class ConfirmationDialogWidget extends StatelessWidget {

  final String title;
  final String subTitle;
  final Function()? onConfirm;
  final Function()? onCancel;

  const new({
    required this.title,
    required this.subTitle,
    this.onCancel,
    this.onConfirm,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: MovieColors.white.withValues(alpha: 0.05),
        borderRadius: kIsWeb
        ? BorderRadius.all(Radius.circular(20))
        : BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MovieText(
            title: title,
            style: textTheme.titleMedium?.copyWith(
              color: MovieColors.textPrimary,
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(height: 8),
          MovieText(
            title: subTitle,
            style: textTheme.titleMedium?.copyWith(
              color: MovieColors.white.withValues(alpha: 0.7),
              fontSize: 14,
              fontWeight: FontWeight.w300
            ),
          ),
          SizedBox(height: 16),
          Row(
            spacing: 12,
            children: [
              Expanded(
                child: CustomGradientButton(
                  label: 'Cancel',
                  applyGradient: false,
                  textAlign: TextAlign.center,
                  textStyle: textTheme.labelMedium?.copyWith(
                    fontSize: 14,
                    color: MovieColors.white.withValues(alpha: 0.8)
                  ),
                  padding: EdgeInsetsGeometry.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    side: BorderSide(
                      width: 1.0,
                      color: MovieColors.grey.withValues(alpha: 0.6)
                    ),
                  ),
                  onTap: onCancel ?? () => context.pop(),
                ),
              ),
              Expanded(
                child: CustomGradientButton(
                  label: 'Clear All',
                  applyGradient: false,
                  textAlign: TextAlign.center,
                  textStyle: TextStyle(color: MovieColors.white),
                  padding: EdgeInsetsGeometry.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    side: BorderSide(
                      width: 1.0,
                      color: MovieColors.red
                    ),
                  ),
                  color: MovieColors.red,
                  onTap: onConfirm,
                  // onTap: () {
                  //   context.pop();
                  //   ref.read(watchlistFavProvider.notifier).clearAllWatchFavList(type);
                  // },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}