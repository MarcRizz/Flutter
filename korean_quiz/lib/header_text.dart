import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(this.headerText, {super.key});

  final headerText;

  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: TextStyle(
        fontFamily: 'Arial',
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
