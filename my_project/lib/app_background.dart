import 'package:flutter/material.dart';


class BackGround extends StatelessWidget {
  const BackGround(this.activeImage, {super.key});

  final int activeImage;

  @override
  Widget build(BuildContext context) {
    String imagePath;
    imagePath = 'assets/AshAsh$activeImage.jpg';

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
        ),
      ),
    );
  }
}
