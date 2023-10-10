import 'package:calculator/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const calculator());
}

// ignore: camel_case_types
class calculator extends StatelessWidget {
  const calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const home(),
    );
  }
}

