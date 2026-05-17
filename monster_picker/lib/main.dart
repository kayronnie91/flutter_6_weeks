import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MonsterApp()));
}

class MonsterApp extends StatefulWidget {
  const MonsterApp({super.key});

  @override
  State<MonsterApp> createState() => _MonsterAppState();
}

class _MonsterAppState extends State<MonsterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF131313),
      appBar: AppBar(
        backgroundColor: Color(0xFF131313),
        leading: Icon(Icons.menu, color: Color(0xFFEBB2FF)),
        title: const Text(
          'Monster Picker',
          style: TextStyle(color: Color(0xFFEBB2FF), fontFamily: 'Sora'),
        ),
        actions: [Icon(Icons.settings, color: Color(0xFFEBB2FF))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(), // monster image container
            Text(''), // Monster title
            Text(''), // Monster description
            Container(), // Progress Bar Container
            Row(), // Row with monster cards - horizonal scroll view
          ],
        ),
      ),
    );
  }
}
