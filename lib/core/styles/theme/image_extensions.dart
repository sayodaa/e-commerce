import 'package:ecommerce/core/styles/images/app_images.dart';
import 'package:flutter/material.dart';

class MyImages extends ThemeExtension<MyImages> {
  const MyImages({required this.mainImage});

  final String? mainImage;

  @override
  ThemeExtension<MyImages> copyWith({String? mainImage}) {
    return MyImages(mainImage: mainImage ?? this.mainImage);
  }

  @override
  ThemeExtension<MyImages> lerp(
    covariant ThemeExtension<MyImages>? other,
    double t,
  ) {
    if (other is! MyImages) {
      return this;
    }
    return MyImages(mainImage: mainImage);
  }
  static const MyImages light = MyImages(mainImage: AppImages.lightTest);
  static const MyImages dark = MyImages(mainImage: AppImages.darkTest);
  
}
