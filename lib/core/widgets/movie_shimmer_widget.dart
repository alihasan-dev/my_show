import 'package:flutter/material.dart';
import 'package:my_show/core/utils/app_enums.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/app_utils.dart';

class MovieShimmerWidget extends StatelessWidget {

  final ScreenType screenType;
  final double maxWidth;
  final int sectionCount;

  const MovieShimmerWidget({
    super.key, 
    this.sectionCount = 4,
    this.maxWidth = 0.0,
    this.screenType = ScreenType.mobile
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor:Color(0xFF2A2A2A),
      highlightColor: Color(0xFF3A3A3A),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        itemCount: sectionCount,
        separatorBuilder: (_,_) => SizedBox(
          height: screenType == ScreenType.mobile
          ? 0
          : 20
        ),
        itemBuilder: (_, index) {
          double cardWidth = 125;
          if (index == 0) {
            cardWidth = AppUtils.getTrendingCardWidth(
              maxWidth, 
              canCalculate: true,
              screenType: screenType
            );
          }
          return _ShimmerSection(
            screenType: screenType,
            cardWidth: cardWidth,
          );
        }
      ),
    );
  }

}

class _ShimmerSection extends StatelessWidget {

  final ScreenType screenType; 
  final double cardWidth;

  const _ShimmerSection({
    this.screenType = ScreenType.mobile,
    required this.cardWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: 16,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        SizedBox(height: screenType == ScreenType.mobile ? 10 : 15),
        SizedBox(
          height: screenType == ScreenType.mobile
          ? 270
          : 295,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            separatorBuilder: (_,_) => SizedBox(width: screenType == ScreenType.mobile ? 4 : 15),
            itemBuilder: (_,_) {
              return _ShimmerCard(
                screenType: screenType,
                cardWidth: cardWidth,
              );
            },
          ),
        ),
      ],
    );
  }
}

class _ShimmerCard extends StatelessWidget {

  final ScreenType screenType;
  final double cardWidth;

  const _ShimmerCard({
    this.screenType = ScreenType.mobile,
    required this.cardWidth
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            // height: 195,
            height: screenType == ScreenType.mobile
            ? 200
            : 225,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(height: screenType == ScreenType.mobile ? 10 : 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 90,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 70,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
