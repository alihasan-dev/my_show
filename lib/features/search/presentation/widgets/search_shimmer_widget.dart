import 'package:flutter/material.dart';
import 'package:my_show/core/utils/app_enums.dart';
import 'package:my_show/core/utils/app_utils.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/constants/movie_colors.dart';

class SearchShimmerWidget extends StatelessWidget {

  final EdgeInsetsGeometry? padding;
  final double height;
  final int? itemCount;
  final double? radius;
  final ScreenType screenType;
  
  const SearchShimmerWidget({
    super.key,
    this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
    this.height = 141,
    this.radius,
    this.itemCount,
    this.screenType = ScreenType.mobile
  });
  
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor:MovieColors.grey.withValues(alpha: 0.1),
      highlightColor: MovieColors.grey.withValues(alpha: 0.2),
      child: ListView.separated(
        padding: padding,
        shrinkWrap: true,
        itemCount: itemCount ?? 10,
        separatorBuilder: (_,_) => SizedBox(
          height: screenType == ScreenType.mobile
          ? AppUtils.cardGapHeightMobile
          : AppUtils.cardGapHeightWeb
        ),
        itemBuilder: (_,_) => Container(
          height: height,        
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 8),
            color: Colors.grey.shade100
          ),
        ),
      ),
    );
  }

}