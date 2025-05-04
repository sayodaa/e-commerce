import 'package:ecommerce/core/extensions/context_extension.dart';
import 'package:ecommerce/core/routes/app_routes.dart';
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
              'go to test2',
              style: TextStyle(color: context.color.mainColor),
            ),
          ),
          onTap: () {
            context.pushNamed(AppRoutes.test2);
          },
        ),
      ),
    );
  }
}
