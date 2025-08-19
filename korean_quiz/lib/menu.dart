import 'package:flutter/material.dart';
import 'package:korean_quiz/header_text.dart';
import 'package:korean_quiz/styled_text.dart';

class MainPage extends StatelessWidget {
  const MainPage(this.onStartQuiz, {super.key});

  final void Function() onStartQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: HeaderText('Korean Quiz!'), //Greeting header
            ),
          ],
        ),
        Padding(
          padding: EdgeInsetsGeometry.fromLTRB(3, 20, 3, 20),
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: StyledText(
              'Confident in your Korean language?\nStart the quiz by pressing the button below!',
            ),
          ),
        ),
        FilledButton(
          onPressed: onStartQuiz,
          style: FilledButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 231, 231, 231),
            foregroundColor: const Color.fromARGB(255, 34, 34, 34),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text('Start', style: TextStyle(fontSize: 20)),
        ),
      ],
    );
  }
}
