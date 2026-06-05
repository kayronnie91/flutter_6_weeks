import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  const ChoiceButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(text));
  }
}
