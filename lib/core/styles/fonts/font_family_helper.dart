class FontFamilyHelper {
  FontFamilyHelper._();
  static const String cairo = 'Cairo';
  static const String poppins = 'Poppins';

  // TODO: Shared preferences
  static String getLocalizedFamily(){
    const currentLanguage = 'en';
    return currentLanguage == 'ar' ? cairo : poppins;
  }
  
}
