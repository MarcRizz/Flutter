import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, required this.message});

  final String message;

  @override
  Widget build(context) {
    return Text(
      message,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: 'Courier New',
      )
    );
  }
}