import 'package:flutter/material.dart';


class HeaderFilledButton extends StatelessWidget {
  const HeaderFilledButton(
    this.buttonNum, {
    super.key,
    required this.onPressed,
    required this.isActive,
  });

  final int buttonNum;
  final VoidCallback onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      style: FilledButton.styleFrom(
        backgroundColor: isActive
            ? const Color.fromARGB(255, 19, 100, 165)
            : const Color.fromARGB(255, 9, 46, 77),
        padding: EdgeInsets.zero,
        minimumSize: const Size(70, 40),
      ),
      icon: isActive
          ? Icon(Icons.image_rounded, color: const Color.fromARGB(255, 252, 141, 219))
          : Icon(
              Icons.image_rounded,
              color: const Color.fromARGB(120, 255, 255, 255),
            ),
      onPressed: onPressed,
      label: isActive
          ? Text('$buttonNum', style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)))
          : Text(
              '$buttonNum',
              style: TextStyle(color: const Color.fromARGB(143, 255, 255, 255)),
            ),
    );
  }
}
