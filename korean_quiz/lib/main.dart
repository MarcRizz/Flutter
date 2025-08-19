import 'package:flutter/material.dart';
import 'korean_quiz_start.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Required before calling SystemChrome
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(KoreanQuizStart());
}
