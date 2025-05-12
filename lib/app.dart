import 'package:ecommerce/core/app/connectevity_controller.dart';
import 'package:ecommerce/core/app/cubit/app_cubit.dart';
import 'package:ecommerce/core/common/screens/no_network_screen.dart';
import 'package:ecommerce/core/di/ingecation_countainer.dart';
import 'package:ecommerce/core/language/app_localizations_setup.dart';
import 'package:ecommerce/core/routes/app_routes.dart';
import 'package:ecommerce/core/routes/route_names.dart';
import 'package:ecommerce/core/services/shared_pref/shared_pref_keys.dart';
import 'package:ecommerce/core/services/shared_pref/shared_prefs.dart';
import 'package:ecommerce/core/styles/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectevityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return BlocProvider(
            create:
                (context) =>
                    getIt<AppCubit>()..changeThemeMode(
                      sharedMode: SharedPref().getBoolean(
                        SharedPrefKeys.themeChangeMode,
                      ),
                    )..getSavedLangages(),
            child: ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (_, __) {
                return BlocBuilder<AppCubit, AppState>(
                  buildWhen: (previous, current) => previous != current,
                  builder: (context, state) {
                    final cubit = context.read<AppCubit>();
                    return MaterialApp(
                      locale: Locale(cubit.currentCode),
                      supportedLocales: AppLocalizationsSetup.supportedLocales,
                      localizationsDelegates:
                          AppLocalizationsSetup.localizationsDelegates,
                      localeResolutionCallback:
                          AppLocalizationsSetup.localeResolutionCallback,
                      theme: //! Now Safe because ScreenUtil is initialized
                          cubit.isDark ? themeDark() : themeLight(),
                      debugShowCheckedModeBanner: false,
                      initialRoute: RouteNames.login,
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
                    );
                  },
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
