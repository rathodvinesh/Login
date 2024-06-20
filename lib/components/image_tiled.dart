import 'package:flutter/material.dart';

class SquareTiled extends StatelessWidget {
  final String imagePath;

  const SquareTiled({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        imagePath,
        height: 25,
      ),
    );
  }
}
