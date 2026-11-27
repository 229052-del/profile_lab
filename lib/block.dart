import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  const Block(
    this.image,
    this.title, {
    super.key,
    required this.score,
    required this.colours,
  });

  final String image;
  final String title;
  final String score;
  final Color colours;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: colours,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Image.asset(image, width: 38, height: 38),
          const SizedBox(height: 8),
          Text(
            score,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}