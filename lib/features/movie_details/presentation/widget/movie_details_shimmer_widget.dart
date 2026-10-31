import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extension_method.dart';

class MovieDetailsShimmer extends StatelessWidget {

  final ScreenType screenType;
  
  const MovieDetailsShimmer({
    super.key, 
    this.screenType = ScreenType.mobile
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final mobileView = screenType == ScreenType.mobile;
    return SingleChildScrollView(
      child: Shimmer.fromColors(
        baseColor: Color(0xFF2A2A2A),
        highlightColor: Color(0xFF3A3A3A),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (mobileView) ...[
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
            ] else ...[
              MovieDetailsWebShimmer()
            ],
            const SizedBox(height: 24),
            // Cast title shimmer
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 18,
                width: 80,
                color: Color(0xFF2C2C2C),
              ),
            ),
            const SizedBox(height: 12),
            // Cast list shimmer
            SizedBox(
              height: 200,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                separatorBuilder: (_,_) => SizedBox(
                  width: screenType == ScreenType.mobile
                  ? 4
                  : 12
                ),
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 100,
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
            // Cast title shimmer
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 18,
                width: 80,
                color: Color(0xFF2C2C2C),
              ),
            ),

            const SizedBox(height: 12),
            // Crew list shimmer
            SizedBox(
              height: 200,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                separatorBuilder: (_,_) => SizedBox(
                  width: screenType == ScreenType.mobile
                  ? 4
                  : 12
                ),
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 100,
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
            const SizedBox(height: 18)
          ],
        ),
      ),
    );
  }
}


class MovieDetailsWebShimmer extends StatelessWidget {

  const MovieDetailsWebShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final screenType = width.screenType;

        final isMobile = screenType == ScreenType.mobile;
        final isTablet = screenType == ScreenType.tablet;

        final horizontalPadding = isMobile || isTablet
            ? 20.0
            : (width * 0.043).clamp(20.0, 30.0);

        final heroHeight = isTablet ? 410.0 : 460.0;

        return SizedBox(
          width: double.infinity,
          height: heroHeight,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              horizontalPadding  - 8,
              screenType == ScreenType.mobile ? 20 : 30,
              horizontalPadding,
              28,
            ),
            child: Row(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 290,
                  width: 195,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xFF2C2C2C),
                  )
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 40,
                        width: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF2C2C2C),
                        )
                      ),
                      SizedBox(height: 12),
                      Container(
                        height: 14,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xFF2C2C2C),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 14,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xFF2C2C2C),
                        ),
                      ),
                      SizedBox(height: 18),
                      Container(
                        height: 40,
                        width: 180,
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Color(0xFF2C2C2C),
                        ),
                      ),
                      SizedBox(height: 18),
                      SizedBox(
                        height: 35,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: List.generate(
                            5, 
                            (_) {
                              return Container(
                                height: 35,
                                width: 120,
                                margin: EdgeInsets.only(right: 8),
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Color(0xFF2C2C2C),
                                )
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 18),
                      Column(
                        spacing: 8,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          6, 
                          (index) {
                            return Container(
                              height: 14,
                              width: index == 5
                              ? 240
                              : double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xFF2C2C2C),
                              )
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
