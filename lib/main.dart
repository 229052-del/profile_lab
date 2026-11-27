import 'package:flutter/material.dart';

import 'block.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const cardImage = 'assets/images/card.png';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Profile'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () => debugPrint('Menu tapped'),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Center(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Diven',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Center(
              child: Chip(
                avatar: Icon(Icons.school, size: 17, color: Colors.amber),
                label: Text('Student'),
                backgroundColor: Color(0xFFE0E0E0),
              ),
            ),
            const SizedBox(height: 28),
            const Wrap(
              alignment: WrapAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: [
                Block(
                  cardImage,
                  'Reading',
                  score: '80%',
                  colours: Colors.yellowAccent,
                ),
                Block(
                  cardImage,
                  'Coding',
                  score: '85%',
                  colours: Colors.yellowAccent,
                ),
                Block(
                  cardImage,
                  'Projects',
                  score: '90%',
                  colours: Color(0xFFDEBEFF),
                ),
                Block(
                  cardImage,
                  'Practice',
                  score: '80%',
                  colours: Colors.yellowAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}