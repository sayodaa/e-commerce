import 'dart:ui';

import 'package:ecommerce/core/services/shared_pref/shared_pref_keys.dart';
import 'package:ecommerce/core/services/shared_pref/shared_prefs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial()) {
    _loadThemeMode();
  }

  bool isDark = true;
  String currentCode = 'en';
  Future<void> _loadThemeMode() async {
    final savedMode = SharedPref().getBoolean(SharedPrefKeys.themeChangeMode);
    if (savedMode != null) {
      isDark = savedMode;
      emit(AppState.themeChangeMode(isDark: isDark));
    }
  }

  //* Change Theme
  Future<void> changeThemeMode({required bool? sharedMode}) async {
    if (sharedMode != null) {
      isDark = sharedMode;
      emit(AppState.themeChangeMode(isDark: isDark));
    } else {
      isDark = !isDark;
      await SharedPref()
          .setBoolean(SharedPrefKeys.themeChangeMode, booleanValue: isDark)
          .then((value) => emit(AppState.themeChangeMode(isDark: isDark)));
    }
  }

  //* Change Language
  void getSavedLangages() {
    final result =
        SharedPref().containPreference(SharedPrefKeys.changeLanguage)
            ? SharedPref().getString(SharedPrefKeys.changeLanguage)
            : 'en';
    currentCode = result!;
    emit(AppState.changeLanguage(locale: Locale(currentCode)));
  }

  Future<void> _changeLanguage(String language) async {
    await SharedPref().setString(
      SharedPrefKeys.changeLanguage,
      language,
    );
    currentCode = language;
    emit(AppState.changeLanguage(locale: Locale(currentCode)));
  }

  void toArabic() => _changeLanguage('ar');
  void toEnglish() => _changeLanguage('en');
}
