import 'package:intl/intl.dart';
import '../../core/utils/language_code.dart';
import '../constants/app_strings.dart';

extension NumExtensionUtils on num {

  String get parseGender {
    try {
      final gender = this;
      switch (gender) {
        case 0:
          return 'Not set / not specified';
        case 1:
          return 'Female';
        case 2:
          return 'Male';
        case 3:
          return 'Non-binary';
        default:
          return 'N/A';
      }
    } catch (e) {
      return 'N/A';
    }
  }

  String get formatRuntime {
    final minutes = this;
    final hours = minutes ~/ 60; // integer division
    final mins = minutes % 60;   // remainder
    return "${hours}h ${mins}m";
  }

}

extension StringExtensionUtils on String {

  String formatDOB({bool hideYrs = false}) {
    try {
      String input = this;
      if (input.isBlank) return 'N/A';
      final dob = DateTime.parse(input);
      final newDate = DateTime(dob.year, dob.month, dob.day);
      String formattedDate = DateFormat("MMM d, y").format(newDate);
      if (hideYrs) return formattedDate;
      // Calculate age
      String age = calculateAge(newDate);
      return "$formattedDate ($age)";
    } catch (e) {
      return 'N/A';
    }
  }

  String get formatLanguage {
    try {
      final languageCode = this;
      if (languageCode.isBlank) return 'N/A';
      return languageMap[languageCode] ?? 'N/A';
    } catch (e) {
      return 'N/A';
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

  String get capitalizeWord {
    try {
      String value = this;
      if (value.isBlank) return value;
      return value.split('_').map((item) => item.capitalize).join(' ');
    } catch (e) {
      return this;
    }
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
      return "${AppStrings.imageBaseUrl}$this";
    } catch (e) {
      return this;
    }
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