import 'package:ecommerce/core/common/widgets/text_app.dart';
import 'package:ecommerce/core/extensions/context_extension.dart';
import 'package:ecommerce/core/language/lang_keys.dart';
import 'package:ecommerce/core/styles/fonts/font_weight_healper.dart';
import 'package:ecommerce/features/auth/auth_title_info.dart';
import 'package:ecommerce/features/auth/dark_and_language.dart';
import 'package:ecommerce/features/auth/presentation/widgets/login/login_bottom.dart';
import 'package:ecommerce/features/auth/presentation/widgets/sign_up/sign_up_text_form.dart';
import 'package:ecommerce/features/auth/presentation/widgets/sign_up/user_image_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => SignUpBodyState();
}

TextEditingController _emailcontroller = TextEditingController();
TextEditingController _passwordcontroller = TextEditingController();

class SignUpBodyState extends State<SignUpBody> {
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
            const SizedBox(height: 30),
            // ? Auth title info
            AuthTitleInfo(
              title: context.transelate(LangKeys.signUp),
              description: context.transelate(LangKeys.signUpWelcome),
            ),
            // ? Avatar image
            const UserImageCircle(),
            // ? Space
            const SizedBox(height: 10),
            // ? sign up form
            SignUpTextForm(
              emailcontroller: _emailcontroller,
              passwordcontroller: _passwordcontroller,
            ),
            // ? Space
            const SizedBox(height: 10),
            // ? sign up bottom
            LoginBottom(text: context.transelate(LangKeys.signUp)),
            // ? Go to login
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: TextApp(
                text: context.transelate(LangKeys.youHaveAccount),
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
