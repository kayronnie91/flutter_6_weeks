import 'package:flutter/material.dart';
import 'monster.dart';

class MonsterCard extends StatelessWidget {
  const MonsterCard({
    super.key,
    required this.monster,
    required this.onTap,
    required this.isSelected,
  });
  final Monster monster;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 120,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Color(0xFFEBB2FF) : Colors.transparent,
          ),
          color: Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(20),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(monster.monsterImage, height: 60),

            SizedBox(height: 10),

            Text(
              monster.monsterName,
              style: TextStyle(
                color: Color(0xFFEBB2FF),
                fontFamily: 'Sora',
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
