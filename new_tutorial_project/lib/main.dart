import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  const color1 = Color.fromARGB(255, 121, 245, 216);
  const color2 = Colors.cyan;

  runApp(const MyApp(colors: [color1, color2]));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(backGroundColor: colors),
      ),
    );
  }
}
