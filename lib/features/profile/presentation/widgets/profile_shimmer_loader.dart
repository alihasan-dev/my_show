import 'package:flutter/material.dart';
import 'package:my_show/core/utils/app_enums.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/utils/app_extension_method.dart';

class ProfileShimmerLoader extends StatelessWidget {

  final bool isDark;
  final ScreenType screenType;
  final double? maxWidth;
  
  const ProfileShimmerLoader({
    super.key,
    this.isDark = true,
    this.screenType = ScreenType.mobile,
    this.maxWidth
  });
  
  @override
  Widget build(BuildContext context) {
    final mobileView = screenType == ScreenType.mobile || screenType == ScreenType.tablet;
    return Scaffold(
      body: Shimmer.fromColors(
        baseColor: isDark ? Color(0xFF2A2A2A) : Colors.grey.shade300,
        highlightColor: isDark ? Color(0xFF3A3A3A): Colors.grey.shade100,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (mobileView) ...[
                Container(
                  height: MediaQuery.of(context).size.height * 0.52,
                  width: double.infinity,
                  color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    height: 20,
                    width: 150,
                    color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    height: 16,
                    width: 100,
                    color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                  ),
                ),
                const SizedBox(height: 8),
                // Biography lines placeholder
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Container(
                          height: 14,
                          width: double.infinity,
                          color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                        ),
                      ),
                    ),
                  ),
                ),
              ] else ...[
                ProfileWidgetWebShimmer()
              ],

              const SizedBox(height: 10),
              // Known For title placeholder
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 16,
                  width: 120,
                  color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                ),
              ),
              const SizedBox(height: 12),
              // Horizontal scroll for movies
              SizedBox(
                height: 150,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  separatorBuilder: (_, _) => SizedBox(
                    width: screenType == ScreenType.mobile
                    ? 4
                    : 12
                  ),
                  itemBuilder: (_, _) => Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 16,
                  width: 120,
                  color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                ),
              ),
              const SizedBox(height: 12),
              // Horizontal scroll for movies
              SizedBox(
                height: 150,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  separatorBuilder: (_, _) => SizedBox(
                    width: screenType == ScreenType.mobile
                    ? 4
                    : 12
                  ),
                  itemBuilder: (_, _) => Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 16,
                  width: 120,
                  color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                ),
              ),
              const SizedBox(height: 12),
              // Horizontal scroll for movies
              SizedBox(
                height: 150,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  separatorBuilder: (_, _) => SizedBox(
                    width: screenType == ScreenType.mobile
                    ? 4
                    : 12
                  ),
                  itemBuilder: (_, _) => Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileWidgetWebShimmer extends StatelessWidget {

  const ProfileWidgetWebShimmer({super.key});

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
                // MovieImageWidget(
                //   imagePath: (profileData.profilePath ?? '').generateImageURL,
                //   height: 290,
                //   width: 195,
                //   radius: 6,
                // )
                Container(
                  height: 290,
                  width: 195,
                  // color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
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
                        )
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 14,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xFF2C2C2C),
                        )
                      ),
                      SizedBox(height: 18),
                      Container(
                        height: 30,
                        width: 180,
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Color(0xFF2C2C2C),
                        )
                      ),
                      SizedBox(height: 18),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 10,
                        children: List.generate(
                          6, 
                          (_) {
                            return Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF2C2C2C),
                              )
                            );
                          }
                        )
                      ),
                      SizedBox(height: 18),
                      Column(
                        spacing: 8,
                        children: List.generate(
                          6, 
                          (_) {
                            return Container(
                              height: 14,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xFF2C2C2C),
                              )
                            );
                          }
                        )
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        );
      },
    );
  }
}
