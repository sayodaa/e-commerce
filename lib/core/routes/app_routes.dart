import 'package:ecommerce/core/common/screens/under_build_screen.dart';
import 'package:ecommerce/core/routes/base_route.dart';
import 'package:ecommerce/core/routes/route_names.dart';
import 'package:ecommerce/features/auth/presentation/screens/login_screen.dart';
import 'package:ecommerce/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<void> onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case RouteNames.login:
        return BaseRoute(page: const LoginScreen());
      case RouteNames.signUp:
        return BaseRoute(page: const SignUpScreen());
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
