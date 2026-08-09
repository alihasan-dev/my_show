import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
import '../../core/utils/language_code.dart';

extension NumExtensionUtils on num {

  String get parseGender {
    try {
      final gender = this;
      switch (gender) {
        case 0:
          return 'Not specified';
        case 1:
          return 'Female';
        case 2:
          return 'Male';
        case 3:
          return 'Non binary';
        default:
          return '-';
      }
    } catch (e) {
      return '-';
    }
  }

  String get formatRuntime {
    final minutes = this;
    final hours = minutes ~/ 60; // integer division
    final mins = minutes % 60;   // remainder
    return "${hours}h ${mins}m";
  }

  String get formattedRating {
    return this % 1 == 0
    ? toInt().toString()
    : toString();
  }

  Color get getRatingColor {
    var rating = clamp(0.0, 1.0);
    if (rating >= 0.90) {
      return const Color(0xFF2E7D32); // Dark Green
    } else if (rating >= 0.80) {
      return const Color(0xFF43A047); // Green
    } else if (rating >= 0.70) {
      return const Color(0xFF7CB342); // Light Green
    } else if (rating >= 0.60) {
      return const Color(0xFFFDD835); // Yellow
    } else if (rating >= 0.50) {
      return const Color(0xFFFFB300); // Amber
    } else if (rating >= 0.40) {
      return const Color(0xFFFB8C00); // Orange
    } else if (rating >= 0.30) {
      return const Color(0xFFF4511E); // Deep Orange
    } else {
      return const Color(0xFFD32F2F); // Red
    }
  }

  int get getCrossAxisCount {
    final width = this;
    if (width < 600) return 3;       // Mobile
    if (width < 900) return 4;       // Tablet
    if (width < 1200) return 5;      // Small Desktop
    if (width < 1500) return 6;      // Medium Desktop
    return 7;                        // Large Desktop
  }

}

extension StringExtensionUtils on String {

  String formatDOB({bool hideYrs = false}) {
    try {
      String input = this;
      if (input.isBlank) return '-';
      final dob = DateTime.parse(input);
      final newDate = DateTime(dob.year, dob.month, dob.day);
      String formattedDate = DateFormat("MMM d, y").format(newDate);
      if (hideYrs) return formattedDate;
      // Calculate age
      String age = calculateAge(newDate);
      return "$formattedDate ($age)";
    } catch (e) {
      return '-';
    }
  }

  String get formatLanguage {
    try {
      final languageCode = this;
      if (languageCode.isBlank) return '-';
      return languageMap[languageCode] ?? '-';
    } catch (e) {
      return '-';
    }
  }

  String get capitalize {
    try {
      String value = this;
      if (value.isBlank) return value;
      return value[0].toUpperCase() + value.substring(1).toLowerCase();
    } catch (e) {
      return this;
    }
  }

  String get nameAvatarLabel {
    try {
      String value = this;
      if (value.isBlank) return value;
      return value[0].toUpperCase();
    } catch (e) {
      return this;
    }
  }

  String get capitalizeWord {
    try {
      String value = this;
      if (value.isBlank) return value;
      return value.split(' ').map((item) => item.capitalize).join(' ');
    } catch (e) {
      return this;
    }
  }

  String get handleEmptyName {
    return isBlank ? 'Anonymous' : this;
  }

  bool get isBlank {
    try {
      return trim().isEmpty;
    } catch (e) {
      return false;
    }
  }

  String get generateImageURL {
    try {
      return "${dotenv.get('IMAGE_BASE_URL')}$this";
    } catch (e) {
      return this;
    }
  }

  String get replaceNA {
    return toLowerCase().contains('n/a') ? '-' : this;
  }

}

String calculateAge(DateTime birthDate) {
  final today = DateTime.now();
  int age = today.year - birthDate.year;
  if (age != 0) {
    return '$age Yrs';
  } else {
    int months = today.month - birthDate.month;
    if (months != 0) {
      return '$months Mths';
    } else {
      int days = today.day - birthDate.day;
      return days == 0 ? 'Today' : '$days Days';
    }
  }
}

