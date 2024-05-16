import 'package:flutter/material.dart';

class TabText extends StatelessWidget {
  final String text;
  const TabText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: "Avenir", fontWeight: FontWeight.w400, fontSize: 16),
    );
  }
}
