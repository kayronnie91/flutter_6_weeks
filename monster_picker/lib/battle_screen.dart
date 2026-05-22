import 'package:flutter/material.dart';
import 'package:monster_picker/monster.dart';
import 'package:monster_picker/stat_bar.dart';

class BattleScreen extends StatelessWidget {
  final Monster player1Monster;
  final Monster player2Monster;
  const BattleScreen({
    super.key,
    required this.player1Monster,
    required this.player2Monster,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Monster Arena')),
      body: Column(
        children: [
          Image.asset(player1Monster.monsterImage),
          Container(
            child: StatBar(
              barLevel: player1Monster.maxHp,
              statName: 'HP Remaining',
            ),
          ),
          SizedBox(height: 20),
          Text('VS'),
          Image.asset(player2Monster.monsterImage),
          Container(
            child: StatBar(
              barLevel: player2Monster.maxHp,
              statName: 'HP Remaining',
            ),
          ),
        ],
      ),
    );
  }
}
