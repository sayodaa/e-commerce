import 'package:ecommerce/core/extensions/context_extension.dart';
import 'package:ecommerce/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class Test1 extends StatelessWidget {
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('test1'),
        ) ,
      body: Center(
        child: GestureDetector(child: const Text('go to test2'),onTap: (){
          context.pushNamed(AppRoutes.test2);
        },),
      ),
    );
  }
}
