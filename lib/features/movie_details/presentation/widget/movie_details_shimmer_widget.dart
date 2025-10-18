import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MovieDetailsShimmer extends StatelessWidget {
  
  const MovieDetailsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Shimmer.fromColors(
        baseColor: Color(0xFF2A2A2A),
        highlightColor: Color(0xFF3A3A3A),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top banner shimmer
            Container(
              height: 250 + kToolbarHeight,
              width: width,
              color: Color(0xFF2C2C2C),
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Poster shimmer
                  Container(
                    height: 130,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Color(0xFF2C2C2C),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(width: 12),

                  // Title + genre shimmer
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: width * 0.5,
                          color: Color(0xFF2C2C2C),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 16,
                          width: width * 0.3,
                          color: Color(0xFF2C2C2C),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          height: 14,
                          width: 60,
                          color: Color(0xFF2C2C2C),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Overview title shimmer
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 18,
                width: 100,
                color: Color(0xFF2C2C2C),
              ),
            ),

            const SizedBox(height: 12),

            // Overview text shimmer
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: 14,
                      width: width * 0.9,
                      color: Color(0xFF2C2C2C),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Cast title shimmer
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 18,
                width: 60,
                color: Color(0xFF2C2C2C),
              ),
            ),

            const SizedBox(height: 12),

            // Cast list shimmer
            SizedBox(
              height: 150,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      height: 100,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 14,
                      width: 60,
                      color: Color(0xFF2C2C2C),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Cast list shimmer
            SizedBox(
              height: 150,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      height: 100,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFF2C2C2C),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 14,
                      width: 60,
                      color: Color(0xFF2C2C2C),
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
