import 'package:flutter/material.dart';
import 'quiz_header.dart';
import 'menu.dart';
import 'questions_screen.dart';

class KoreanQuizStart extends StatefulWidget {
  const KoreanQuizStart({super.key});

  @override
  State<KoreanQuizStart> createState() {
    return _StartQuizState();
  }
}

class _StartQuizState extends State<KoreanQuizStart> {
  var activePage = 'Main-Menu-screen';

  void questionsPage() {
    setState(() {
      activePage = 'Questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {

    var screen = activePage == 'Main-Menu-screen'
              ? MainPage(questionsPage)
              : QuestionsScreen();

    return MaterialApp(
      title: "Korean Quiz",
      home: Scaffold(
        appBar: QuizHeader(),
        body: Container(
          child: screen
        ),
      ),
    );
  }
}