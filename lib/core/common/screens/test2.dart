import 'package:ecommerce/core/extensions/context_extension.dart';
import 'package:ecommerce/core/language/lang_keys.dart';
import 'package:ecommerce/core/styles/images/app_images.dart';
import 'package:flutter/material.dart';

class Test2 extends StatelessWidget {
  const Test2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test2')),
      backgroundColor: Colors.pink,
      body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(AppImages.darkTest)),
            ),
            child: Text(
              context.translate(LangKeys.sayedStore),
              style: TextStyle(color: context.color.mainColor),
            ),
          ),
    );
  }
}
