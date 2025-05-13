import 'package:flutter/material.dart';
import 'package:num_converter/screens/home_page.dart';

void main() {
  runApp(const NumConverter());
}

class NumConverter extends StatelessWidget {
  const NumConverter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
