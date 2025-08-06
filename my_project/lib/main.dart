import 'package:flutter/material.dart';

import 'header.dart';
import 'app_background.dart';

void main() {
  runApp(const MyProject());
}

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  int activeImage = 1;
  Color activeColor = Colors.black;
  late Widget activeScreen;

  void showImage(int imageNumber) {
    setState(() {
      activeImage = imageNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    activeScreen = BackGround(activeImage);

    return MaterialApp(
      title: 'Ash Ash',
      home: Scaffold(
        appBar: Header(onPhotoPressed: showImage, activeButton: activeImage),
        body: activeScreen,
      ),
    );
  }
}
