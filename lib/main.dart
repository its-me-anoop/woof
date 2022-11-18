import 'package:flutter/material.dart';
import 'package:woof/view/home_page.dart';

void main() {
  runApp(const Woof());
}

class Woof extends StatelessWidget {
  const Woof({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:
          ThemeData(primarySwatch: Colors.brown, brightness: Brightness.light),
      home: const HomePage(),
    );
  }
}
