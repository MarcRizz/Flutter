import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.onStartQuiz});

  final VoidCallback onStartQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: Text(
                //Header text
                'Korean Quiz!',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsetsGeometry.fromLTRB(3, 20, 3, 20),
          child: Text(
            'Confident in your Korean language?\nStart the quiz by pressing the button below!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
        FilledButton(onPressed: onStartQuiz, child: Text('Start'))
      ],
    );
  }
}
