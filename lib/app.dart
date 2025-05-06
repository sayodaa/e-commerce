import 'package:ecommerce/core/app/connectevity_controller.dart';
import 'package:ecommerce/core/common/screens/no_network_screen.dart';
import 'package:ecommerce/core/language/app_localizations_setup.dart';
import 'package:ecommerce/core/routes/app_routes.dart';
import 'package:ecommerce/core/routes/route_names.dart';
import 'package:ecommerce/core/styles/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectevityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              locale: const Locale('ar'),
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localizationsDelegates:
                  AppLocalizationsSetup.localizationsDelegates,
              localeResolutionCallback:
                  AppLocalizationsSetup.localeResolutionCallback,
              theme: themeLight(),
              debugShowCheckedModeBanner: false,
              initialRoute: RouteNames.test1,
              onGenerateRoute: AppRoutes.onGenerateRoute,
              builder: (context, widget) {
                ConnectevityController.instance.init();
                return GestureDetector(
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Scaffold(body: widget),
                );
              },
            ),
          );
        } else {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: NoNetworkScreen(),
          );
        }
      },
    );
  }
}
