import 'package:ecommerce/core/styles/colors/colors_dark_mode.dart';
import 'package:ecommerce/core/styles/colors/colors_lieght.dart';
import 'package:ecommerce/core/styles/theme/color_extensions.dart';
import 'package:ecommerce/core/styles/theme/image_extensions.dart';
import 'package:flutter/material.dart';

ThemeData themeDark() {
  return ThemeData(
    extensions:const <ThemeExtension<dynamic>>[MyColors.dark, MyImages.dark],
    scaffoldBackgroundColor: ColorsDark.mainColor,
    useMaterial3: true,);
}


ThemeData themeLight() {
  return ThemeData(
    extensions:const <ThemeExtension<dynamic>>[MyColors.light, MyImages.light],
    scaffoldBackgroundColor: ColorsLight.mainColor,
    useMaterial3: true,);
}
