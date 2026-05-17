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
    return Scaffold(appBar: AppBar(title: const Text('Monster Picker')));
  }
}
