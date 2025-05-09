import 'package:ecommerce/core/common/animations/animated_do.dart';
import 'package:ecommerce/core/common/widgets/custom_text_field.dart';
import 'package:ecommerce/core/extensions/context_extension.dart';
import 'package:ecommerce/core/language/lang_keys.dart';
import 'package:ecommerce/core/util/app_regex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    required this.emailcontroller,
    required this.passwordcontroller,
    super.key,
  });
  final TextEditingController emailcontroller;
  final TextEditingController passwordcontroller;
  @override
  State<LoginForm> createState() => _LoginFormState();
}
bool isSecured = true;
class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 25.h,
      children: [
        CustomFadeInRight(
          duration: 500,
          child: CustomTextField(
            controller: widget.emailcontroller,
            hintText: context.transelate(LangKeys.email),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (!AppRegex.isEmailValid(widget.emailcontroller.text)) {
                return context.transelate(LangKeys.validEmail);
              }
              return null;
            },
          ),
        ),
        CustomFadeInRight(
          duration: 500,
          child: CustomTextField(
            obscureText: isSecured,
            controller: widget.passwordcontroller,
            suffixIcon: IconButton(
              icon:isSecured?const Icon(
                Icons.visibility,
                color: Colors.grey,
              ): const Icon(
                Icons.visibility_off,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isSecured = !isSecured;
                });
              },
            ),
            hintText: context.transelate(LangKeys.password),
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if (!AppRegex.isPasswordValid(widget.passwordcontroller.text)) {
                return context.transelate(LangKeys.validPasswrod);
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
