import 'package:ecommerce/core/app/connectevity_controller.dart';
import 'package:ecommerce/core/common/screens/no_network_screen.dart';
import 'package:ecommerce/core/styles/fonts/font_family_helper.dart';
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
              debugShowCheckedModeBanner: false,
              home: const Scaffold(
                body: Center(
                  child: Column(
                    children: [
                      Text('عربي'),
                      Text(
                        'متجر',
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: FontFamilyHelper.cairo,
                        ),
                      ),
                      Text('english'),
                      Text(
                        'Store App',
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: FontFamilyHelper.poppins,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              builder: (context, widget) {
                ConnectevityController.instance.init();
                return SafeArea(child: widget!);
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
