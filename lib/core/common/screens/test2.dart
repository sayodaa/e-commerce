import 'package:flutter/material.dart';

class Test2 extends StatelessWidget {
  const Test2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test2')),
      backgroundColor: Colors.pink,
      body: const Center(child: Text('Test2')),
    );
  }
}
