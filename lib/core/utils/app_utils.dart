import 'package:my_show/core/utils/app_enums.dart';

abstract class AppUtils {

  static double cardRadius = 12.0;
  static double cardGapHeightMobile = 4.0;
  static double cardGapHeightWeb = 12.0;

  static double getTrendingCardWidth(
    double screenWidth, {
    bool canCalculate = false,
    ScreenType screenType = ScreenType.mobile
  }) {
    if (!canCalculate) return screenType == ScreenType.mobile ? 125 : 150;
    if (screenWidth < 600) {
      // Mobile: Strictly 125 as defined
      return 125.0; 
    } else if (screenWidth < 1100) {
      // Tablet / Laptop: Scale dynamically between mobile and desktop
      return (screenWidth - 48) / 2.5;
    } else {
      // Large Desktop: Cap max width
      return 380.0; 
    }
  }
}