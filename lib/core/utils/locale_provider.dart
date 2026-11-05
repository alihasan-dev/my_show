import 'dart:ui';
import 'package:riverpod/riverpod.dart';

final localeProvider = Provider<Locale>((_) {
  return PlatformDispatcher.instance.locale;
});