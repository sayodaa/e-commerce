import 'package:ecommerce/core/common/screens/test1.dart';
import 'package:ecommerce/core/common/screens/test2.dart';
import 'package:ecommerce/core/common/screens/under_build_screen.dart';
import 'package:ecommerce/core/routes/base_route.dart';
import 'package:ecommerce/core/routes/route_names.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<void> onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case RouteNames.test1:
        return BaseRoute(page: const Test1());
      case RouteNames.test2:
        return BaseRoute(page: const Test2());
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
