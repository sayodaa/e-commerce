import 'package:ecommerce/core/styles/theme/color_extensions.dart';
import 'package:ecommerce/core/styles/theme/image_extensions.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  // colors
  MyColors get color => Theme.of(this).extension<MyColors>()!;
  MyImages get images => Theme.of(this).extension<MyImages>()!;

  // navigator
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
  // media query
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}
