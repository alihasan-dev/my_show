import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../core/constants/movie_colors.dart';

class ViewAllWidget extends StatelessWidget {

  const ViewAllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: MovieColors.white.withValues(alpha: 0.15),
          width: 1.2,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    MovieColors.white.withValues(alpha: 0.08),
                    MovieColors.white.withValues(alpha: 0.01),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "View All",
                    style: TextStyle(
                      color: MovieColors.white.withValues(alpha: 0.9),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: MovieColors.white.withValues(alpha: 0.25),
                        width: 1.5,
                      ),
                      gradient: LinearGradient(
                        colors: [
                          MovieColors.white.withValues(alpha: 0.20),
                          MovieColors.white.withValues(alpha: 0.05),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                      color: MovieColors.white.withValues(alpha: 0.8),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}