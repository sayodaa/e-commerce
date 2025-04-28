import 'package:flutter/material.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text('E-Commerce')),
        body: Center(
          child: Column(
            children: [
              const Text('E-Commerce'),
              Image.network(
                'https://thaka.bing.com/th/id/OIP.t6C37bafhtP1vqma1eKvwAHaEK?w=286&h=180&c=7&r=0&o=5&pid=1.7',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
