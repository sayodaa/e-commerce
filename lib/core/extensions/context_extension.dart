import 'package:ecommerce/core/language/app_localizations.dart';
import 'package:ecommerce/core/styles/theme/color_extensions.dart';
import 'package:ecommerce/core/styles/theme/image_extensions.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  // Theme colors
  MyColors get color => Theme.of(this).extension<MyColors>()!;

  // Theme images
  MyImages get images => Theme.of(this).extension<MyImages>()!;

  // Localization
  String translate(String langKey) {
    final localizations = AppLocalizations.of(this);
    return localizations?.translate(langKey) ?? langKey;
  }

  // Navigation helpers
  void pop() => Navigator.of(this).pop();

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) =>
      Navigator.of(this).pushNamed(routeName, arguments: arguments);

  void pushReplacementNamed(String routeName, {Object? arguments}) =>
      Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);

  void pushNamedAndRemoveUntil(String routeName, {Object? arguments}) =>
      Navigator.of(this).pushNamedAndRemoveUntil(
        routeName,
        (route) => false,
        arguments: arguments,
      );

  // Screen dimensions
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}
