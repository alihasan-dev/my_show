import 'package:flutter/material.dart';
import '../constants/movie_colors.dart';

enum SnackBarType { success, error, info }

class CustomSnackBar {
  CustomSnackBar._();

  static void show(
    BuildContext context, {
    required String message,
    SnackBarType type = SnackBarType.info,
    Duration duration = const Duration(seconds: 2),
  }) {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
          margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 12),
          duration: duration,
          content: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: _borderColor(type)),
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  MovieColors.black.withValues(alpha: 0.85),
                  MovieColors.black.withValues(alpha: 0.70),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Icon(_icon(type), color: _iconColor(type), size: 20),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    message,
                    style: const TextStyle(
                      color: MovieColors.textPrimary,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }

  static IconData _icon(SnackBarType type) => switch (type) {
    SnackBarType.success => Icons.check_circle_outline_rounded,
    SnackBarType.error => Icons.error_outline_rounded,
    SnackBarType.info => Icons.info_outline_rounded,
  };

  static Color _iconColor(SnackBarType type) => switch (type) {
    SnackBarType.success => MovieColors.greenAccent,
    SnackBarType.error => MovieColors.red,
    SnackBarType.info => MovieColors.teal,
  };

  static Color _borderColor(SnackBarType type) => switch (type) {
    SnackBarType.success => MovieColors.greenAccent.withValues(alpha: 0.3),
    SnackBarType.error => MovieColors.red.withValues(alpha: 0.3),
    SnackBarType.info => MovieColors.white.withValues(alpha: 0.25),
  };
}
