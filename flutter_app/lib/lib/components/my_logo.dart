import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  final String imagePaht;
  const MyLogo({
    super.key,
    required this.imagePaht,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        imagePaht,
        height: 80,
      ),
    );
  }
}
