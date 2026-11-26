import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
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
                ProfileCard(label: 'Reading', score: '80%'),
                ProfileCard(label: 'Coding', score: '85%'),
                ProfileCard(
                  label: 'Projects',
                  score: '90%',
                  color: Color(0xFFDEBEFF),
                ),
                ProfileCard(label: 'Practice', score: '80%'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.label,
    required this.score,
    this.color = Colors.yellowAccent,
  });

  final String label;
  final String score;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Image.asset('assets/images/card.png', width: 38, height: 38),
          const SizedBox(height: 8),
          Text(score, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}