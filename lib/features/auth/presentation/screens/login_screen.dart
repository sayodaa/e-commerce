import 'package:ecommerce/features/auth/presentation/refactors/login_body.dart';
import 'package:ecommerce/features/auth/presentation/refactors/login_custom_paint.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.2,
        child: CustomPaint(painter: AuthCustomPainter()),
      ),
      body: const LoginBody(),
    );
  }
}
