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
  Widget? activePage;

  @override
  void initState() {
    super.initState();
    activePage = MainPage(onStartQuiz: questionsPage);
  }

  void questionsPage() {
    setState(() {
      activePage = QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Korean Quiz",
      home: Scaffold(
        appBar: QuizHeader(),
        body: Container(child: activePage),
      ),
    );
  }
}
