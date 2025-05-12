import 'package:ecommerce/core/styles/colors/colors_dark_mode.dart';
import 'package:ecommerce/core/styles/colors/colors_lieght.dart';
import 'package:ecommerce/core/styles/fonts/font_family_helper.dart';
import 'package:ecommerce/core/styles/theme/color_extensions.dart';
import 'package:ecommerce/core/styles/theme/image_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData themeDark() {
  return ThemeData(
    extensions:const <ThemeExtension<dynamic>>[MyColors.dark, MyAssets.dark],
    scaffoldBackgroundColor: ColorsDark.mainColor,
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        color: ColorsDark.white,
        fontSize: 14.sp,
        fontFamily: FontFamilyHelper.getLocalizedFamily(),
      ),
      displayMedium: TextStyle(
        color: ColorsDark.white,
        fontSize: 18.sp,
        fontFamily: FontFamilyHelper.getLocalizedFamily(),
      ),
      displayLarge: TextStyle(
        color: ColorsDark.white,
        fontSize: 24.sp,
        fontFamily: FontFamilyHelper.getLocalizedFamily(),
      ),
    ),
    );
}


ThemeData themeLight() {
  return ThemeData(
    extensions:const <ThemeExtension<dynamic>>[MyColors.light, MyAssets.light],
    scaffoldBackgroundColor: ColorsLight.mainColor,
    useMaterial3: true,);
}
