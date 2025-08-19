import 'package:flutter/material.dart';

class QuizHeader extends StatelessWidget implements PreferredSizeWidget {
  const QuizHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: BoxBorder.fromLTRB(bottom: BorderSide(width: 1)),
            image: DecorationImage(
              image: AssetImage('assets/Korean_Flag.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(220);
}
