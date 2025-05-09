import 'package:ecommerce/core/app/cubit/app_cubit.dart';
import 'package:ecommerce/core/common/animations/animated_do.dart';
import 'package:ecommerce/core/common/widgets/custom_liner_button.dart';
import 'package:ecommerce/core/common/widgets/text_app.dart';
import 'package:ecommerce/core/extensions/context_extension.dart';
import 'package:ecommerce/core/language/app_localizations.dart';
import 'package:ecommerce/core/language/lang_keys.dart';
import 'package:ecommerce/core/styles/fonts/font_weight_healper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DarkAndLanguage extends StatelessWidget {
  const DarkAndLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ? Language button
          CustomFadeInRight(
            duration: 1000,
            child: CustomLinearButton(
              width: 100.w,
              onPressed:
                  () =>
                      AppLocalizations.of(context)!.isEnLocale
                          ? cubit.toArabic()
                          : cubit.toEnglish(),
              child: TextApp(
                text: context.transelate(LangKeys.language),
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHealper.bold,
                ),
              ),
            ),
          ),
          //? Dark mode button
          BlocBuilder(
            bloc: cubit,
            builder: (context, state) {
              return CustomFadeInLeft(
                duration: 1000,
                child: CustomLinearButton(
                  onPressed: () => cubit.changeThemeMode(sharedMode: null),
                  child: Icon(
                    cubit.isDark
                        ? Icons.light_mode_rounded
                        : Icons.dark_mode_rounded,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
