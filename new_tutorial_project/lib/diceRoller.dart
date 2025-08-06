import 'package:flutter/material.dart';
import 'styled_text.dart';

import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

final random = Random();

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = random.nextInt(6) + 1;
  late String activeDiceImage;
  var diceRoll = 0;

  @override
  void initState() {
    super.initState();
    activeDiceImage = 'assets/dice-$currentDice.png';
  }

  void rollDice() {
    setState(() {
      diceRoll = random.nextInt(6) + 1;
      activeDiceImage = 'assets/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImage,
          width: 300,
          height: 200,
        ),
        const StyledText('이것은 주사위 입니다'),
        const StyledText(
          '아래 버튼을 빠르게 누르세요',
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 200,
          child: FilledButton(
            onPressed: rollDice,
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text('좋아요!'),
          ),
        ),
      ],
    );
  }
}
