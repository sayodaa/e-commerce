import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
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

  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}
