import 'package:ecommerce/core/services/shared_pref/shared_pref_keys.dart';
import 'package:ecommerce/core/services/shared_pref/shared_prefs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());

  bool isDark = true;

// * Theme Mode
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
}
