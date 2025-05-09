import 'package:ecommerce/core/common/animations/animated_do.dart';
import 'package:ecommerce/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserImageCircle extends StatelessWidget {
  const UserImageCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 1000,
      child: CircleAvatar(
        radius: 38.h,
        backgroundImage: AssetImage(context.images.homeBg!),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add_a_photo_rounded, color: context.color.textColor),
        ),
      ),
    );
  }
}
