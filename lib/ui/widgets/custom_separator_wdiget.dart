import 'package:flutter/material.dart';

class CustomSeparator extends StatelessWidget {
  // final double height;
  final Color color;

  const CustomSeparator({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: 50,
      color: color,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
    );
  }
}
