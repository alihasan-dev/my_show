import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MovieShimmerWidget extends StatelessWidget {
  final int sectionCount;

  const MovieShimmerWidget({super.key, this.sectionCount = 3});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor:Color(0xFF2A2A2A),
      highlightColor: Color(0xFF3A3A3A),
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: sectionCount,
        separatorBuilder: (_, __) => const SizedBox(height: 20),
        itemBuilder: (_, __) => const _ShimmerSection(),
      ),
    );
  }
}

class _ShimmerSection extends StatelessWidget {
  const _ShimmerSection();

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
        const SizedBox(height: 10),
        SizedBox(
          height: 301,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            separatorBuilder: (_, __) => const SizedBox(width: 15),
            itemBuilder: (_, __) => const _ShimmerCard(),
          ),
        ),
      ],
    );
  }
}

class _ShimmerCard extends StatelessWidget {
  const _ShimmerCard();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Stack(
          //   clipBehavior: Clip.none,
          //   children: [
          //     Container(
          //       width: double.maxFinite,
          //       height: 200,
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.circular(12),
          //       ),
          //     ),
          //     Positioned(
          //       bottom: -12,
          //       left: 12,
          //       child: Container(
          //         width: 30,
          //         height: 30,
          //         decoration: const BoxDecoration(
          //           color: Colors.white,
          //           shape: BoxShape.circle,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          Container(
            width: double.maxFinite,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 90,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: 6),
                Container(
                  width: 70,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
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
