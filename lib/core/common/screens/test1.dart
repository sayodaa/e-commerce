import 'package:ecommerce/core/extensions/context_extension.dart';
import 'package:ecommerce/core/language/lang_keys.dart';
import 'package:ecommerce/core/routes/route_names.dart';
import 'package:flutter/material.dart';

class Test1 extends StatelessWidget {
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test1', style: TextStyle(color: context.color.mainColor)),
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            constraints: const BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(context.images.mainImage??''),
              ),
            ),
            child: Text(
              context.translate(LangKeys.appName),
              style: TextStyle(color: context.color.mainColor),
            ),
          ),
          onTap: () {
            context.pushNamed(RouteNames.test2);
          },
        ),
      ),
    );
  }
}
