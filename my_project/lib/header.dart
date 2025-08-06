import 'package:flutter/material.dart';
import 'package:my_project/styled_text.dart';
import 'header_filledbutton.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({
    super.key,
    required this.onPhotoPressed,
    required this.activeButton,
  });

  //function to init to be passed on HeaderFilledButton class
  final Function(int) onPhotoPressed;
  final int activeButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: BoxBorder.fromLTRB(bottom: BorderSide(width: 1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5,
            offset: const Offset(0, 0), // Shadow below
          ),
        ],
        gradient: LinearGradient(
          colors: [Colors.black, Colors.white],
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
        ),
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        title: Column(
          children: [
            StyledText(message: 'Welcome to Ash Ash!'),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HeaderFilledButton(
                  1,
                  isActive: activeButton == 1,
                  onPressed: () => onPhotoPressed(1),
                ),
                const SizedBox(width: 5),
                HeaderFilledButton(
                  2,
                  isActive: activeButton == 2,
                  onPressed: () => onPhotoPressed(2),
                ),
                const SizedBox(width: 5),
                HeaderFilledButton(
                  3,
                  isActive: activeButton == 3,
                  onPressed: () => onPhotoPressed(3),
                ),
                const SizedBox(width: 5),
                HeaderFilledButton(
                  4,
                  isActive: activeButton == 4,
                  onPressed: () => onPhotoPressed(4),
                ),
              ],
            ),
          ],
        ),

        toolbarHeight: 120,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
