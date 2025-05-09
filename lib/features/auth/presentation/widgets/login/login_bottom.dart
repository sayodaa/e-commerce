import 'package:ecommerce/core/common/animations/animated_do.dart';
import 'package:ecommerce/core/common/widgets/custom_liner_button.dart';
import 'package:ecommerce/core/common/widgets/text_app.dart';
import 'package:ecommerce/core/extensions/context_extension.dart';
import 'package:ecommerce/core/language/lang_keys.dart';
import 'package:ecommerce/core/styles/fonts/font_weight_healper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBottom extends StatelessWidget {
  const LoginBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 1000,
      child: CustomLinearButton(
        width: double.infinity,
        height: 55.h,
        onPressed: () {},
        child: TextApp(
          text:context.transelate(LangKeys.login),
          theme: context.textStyle.copyWith(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeightHealper.bold,
          ),
        ),
      ),
    );
  }
}
