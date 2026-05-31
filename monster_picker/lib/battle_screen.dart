import 'package:flutter/material.dart';
import 'package:monster_picker/monster.dart';
import 'package:monster_picker/stat_bar.dart';

class BattleScreen extends StatefulWidget {
  final Monster player1Monster;
  final Monster player2Monster;

  const BattleScreen({
    super.key,
    required this.player1Monster,
    required this.player2Monster,
  });

  @override
  State<BattleScreen> createState() => _BattleScreenState();
}

class _BattleScreenState extends State<BattleScreen> {
  bool isPlayer1Turn = true;
  int player1CurrentHp = 100;
  int player2CurrentHp = 100;
  int calculateDamage() {
    if (widget.player1Monster.monsterAttack -
            widget.player2Monster.monsterDefense <=
        0) {
      return 0;
    }

    return widget.player1Monster.monsterAttack -
        widget.player2Monster.monsterDefense;
  }

  int applyDamage(int damage) {
    if (player2CurrentHp - damage <= 0) {
      return 0;
    }

    return player2CurrentHp - damage;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Scaffold(
        backgroundColor: Color(0xFF131313),
        appBar: AppBar(
          backgroundColor: Color(0xFF131313),
          leading: Icon(Icons.menu, color: Color(0xFFEBB2FF)),
          title: const Text(
            'Battle Arena',
            style: TextStyle(color: Color(0xFFEBB2FF), fontFamily: 'Sora'),
          ),
          actions: [Icon(Icons.settings, color: Color(0xFFEBB2FF))],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                widget.player1Monster.monsterImage,
                height: 200,
                width: double.infinity,
              ),
              Container(
                child: StatBar(
                  barLevel: widget.player1Monster.maxHp,
                  statName: 'HP Remaining',
                ),
              ),
              SizedBox(height: 20),
              Text('VS', style: TextStyle(color: Colors.white, fontSize: 24)),
              Image.asset(
                widget.player2Monster.monsterImage,
                height: 200,
                width: double.infinity,
              ),
              Container(
                child: StatBar(
                  barLevel: player2CurrentHp,
                  statName: 'HP Remaining',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final damage = calculateDamage();
                  setState(() {
                    player2CurrentHp = applyDamage(damage);
                  });
                },
                child: Text('Attack'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
