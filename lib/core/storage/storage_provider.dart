import 'package:my_show/core/storage/local_storage.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  ///throw UnimplementedError() is never supposed to execute in a correctly configured app. It's just a placeholder.
  throw UnimplementedError();
});

final localStorageProvider = Provider<LocalStorage>((ref) {
  return LocalStorage(
    ref.read(sharedPreferencesProvider),
  );
});