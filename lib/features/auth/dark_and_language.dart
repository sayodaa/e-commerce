import 'package:ecommerce/core/common/animations/animated_do.dart';
import 'package:ecommerce/core/common/widgets/custom_liner_button.dart';
import 'package:ecommerce/core/common/widgets/text_app.dart';
import 'package:ecommerce/core/extensions/context_extension.dart';
import 'package:ecommerce/core/language/lang_keys.dart';
import 'package:ecommerce/core/styles/fonts/font_weight_healper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DarkAndLanguage extends StatelessWidget {
  const DarkAndLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // ? Language button
        CustomFadeInRight(
          duration: 1000,
          child: CustomLinearButton(
            width: 100.w,
            onPressed: () {},
            child: TextButton(
              onPressed: () {},
              child: TextApp(
                text:  context.transelate(LangKeys.language),
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHealper.bold,
                ),
              ),
            ),
          ),
        ),
        //? Dark mode button
        CustomFadeInLeft(
          duration: 1000,
          child: CustomLinearButton(
            onPressed: () {},
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.light_mode_rounded, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
