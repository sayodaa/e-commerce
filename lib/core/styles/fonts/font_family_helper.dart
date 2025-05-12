import 'package:ecommerce/core/services/shared_pref/shared_pref_keys.dart';
import 'package:ecommerce/core/services/shared_pref/shared_prefs.dart';

class FontFamilyHelper {
  FontFamilyHelper._();
  static const String cairo = 'Cairo';
  static const String poppins = 'Poppins';

  static String getLocalizedFamily() {
    final currentLanguage = SharedPref().getString(
      SharedPrefKeys.changeLanguage,
    );
    return currentLanguage == 'ar' ? cairo : poppins;
  }
}
