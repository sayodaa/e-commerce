import 'package:ecommerce/core/extensions/context_extension.dart';
import 'package:ecommerce/features/auth/presentation/refactors/login_body.dart';
import 'package:ecommerce/features/auth/presentation/refactors/login_custom_paint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 130.h,
        child: CustomPaint(
          painter: AuthCustomPainter(color: context.color.bluePinkDark!),
        ),
      ),
      body: const LoginBody(),
    );
  }
}
