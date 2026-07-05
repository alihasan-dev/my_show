import 'dart:ui';
import 'package:riverpod/riverpod.dart';

final localeProvider = Provider<Locale>((ref) {
  return PlatformDispatcher.instance.locale;
});