import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../constants/movie_colors.dart';

class PeopleShimmerWidget extends StatelessWidget {
  const PeopleShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor:MovieColors.grey.withValues(alpha: 0.1),
      highlightColor: MovieColors.grey.withValues(alpha: 0.2),
      // baseColor:Color(0xFF2A2A2A),
      // highlightColor: Color(0xFF3A3A3A),
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.7,
        ),
        itemCount: 15,
        itemBuilder: (_, __) => Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.5),
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
