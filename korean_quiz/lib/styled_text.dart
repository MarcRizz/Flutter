import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.question, {super.key});

  final question;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: const Color.fromARGB(255, 49, 49, 49),
          fontSize: 20,
        ),
      ),
    );
  }
}
