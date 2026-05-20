import 'package:flutter/material.dart';

class StatBar extends StatelessWidget {
  final String statName;
  final int barLevel;
  const StatBar({super.key, required this.barLevel, required this.statName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                statName,
                style: TextStyle(
                  color: Color(0xFFEBB2FF),
                  fontFamily: 'Sora',
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Text(
                barLevel.toString(),
                style: TextStyle(
                  color: Color(0xFFEBB2FF),
                  fontFamily: 'Sora',
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          LinearProgressIndicator(value: barLevel / 100),
        ],
      ),
    );
  }
}
