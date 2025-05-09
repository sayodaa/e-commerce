import 'package:ecommerce/core/common/widgets/text_app.dart';
import 'package:ecommerce/core/extensions/context_extension.dart';
import 'package:ecommerce/core/language/lang_keys.dart';
import 'package:ecommerce/core/routes/route_names.dart';
import 'package:ecommerce/core/styles/fonts/font_weight_healper.dart';
import 'package:ecommerce/features/auth/auth_title_info.dart';
import 'package:ecommerce/features/auth/dark_and_language.dart';
import 'package:ecommerce/features/auth/presentation/widgets/login/login_bottom.dart';
import 'package:ecommerce/features/auth/presentation/widgets/login/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

TextEditingController _emailcontroller = TextEditingController();
TextEditingController _passwordcontroller = TextEditingController();

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          spacing: 10.h,
          children: [
            // ? Dark and Language
            const DarkAndLanguage(),
            // ? Space
            const SizedBox(height: 40),
            // ? Auth title info
            AuthTitleInfo(
              title: context.transelate(LangKeys.login),
              description: context.transelate(LangKeys.welcome),
            ),
            // ? Space
            const SizedBox(height: 20),
            // ? Login form
            LoginForm(
              emailcontroller: _emailcontroller,
              passwordcontroller: _passwordcontroller,
            ),
            // ? Space
            const SizedBox(height: 20),
            // ? Login bottom
            const LoginBottom(),
            // ? Space
            const SizedBox(height: 20),
            // ? Go to register
            TextButton(
              onPressed: () {
                context.pushNamed(RouteNames.signUp);
              },
              child: TextApp(
                text: context.transelate(LangKeys.createAccount),
                theme: context.textStyle.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeightHealper.bold,
                  color: context.color.bluePinkDark,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
