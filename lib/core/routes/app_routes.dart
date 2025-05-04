import 'package:ecommerce/core/common/screens/test1.dart';
import 'package:ecommerce/core/common/screens/test2.dart';
import 'package:ecommerce/core/common/screens/under_build_screen.dart';
import 'package:ecommerce/core/routes/base_route.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String test1 = 'test1';
  static const String test2 = 'test2';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case test1:
        return BaseRoute(page: const Test1());
      case test2:
        return BaseRoute(page: const Test2());
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
