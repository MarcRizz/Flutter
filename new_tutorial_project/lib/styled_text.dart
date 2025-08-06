import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Container(
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 61, 61, 61),
            fontSize: 24,
            fontFamily: 'Courier New',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
