import 'package:flutter/material.dart';

class Monster {
  late String monsterImage;
  late String monsterName;
  late String monsterTitle;
  late int monsterPower;

  Monster({
    required this.monsterImage,
    required this.monsterName,
    required this.monsterTitle,
    required this.monsterPower,
  });
}

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: MonsterApp()),
  );
}

class MonsterApp extends StatefulWidget {
  const MonsterApp({super.key});

  @override
  State<MonsterApp> createState() => _MonsterAppState();
}

class _MonsterAppState extends State<MonsterApp> {
  List<Monster> monsterList = [
    Monster(
      monsterImage: 'assets/images/Golem.png',
      monsterName: 'Golem',
      monsterTitle: 'Ancient Mutant',
      monsterPower: 7500,
    ),
    Monster(
      monsterImage: 'assets/images/Guardian.png',
      monsterName: 'Guardian Elk',
      monsterTitle: 'Forest Fighter',
      monsterPower: 6450,
    ),
    Monster(
      monsterImage: 'assets/images/Nyxarion.png',
      monsterName: 'Nyxarion',
      monsterTitle: 'Ancient Dragon',
      monsterPower: 9500,
    ),
  ];
  Monster? selectedMonster;
  @override
  initState() {
    super.initState();
    selectedMonster = monsterList[0];
  }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                child: Image.asset(selectedMonster!.monsterImage),
                height: 350,
                width: double.infinity,
              ), // monster image container
              SizedBox(height: 30),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  selectedMonster!.monsterName,
                  style: TextStyle(
                    color: Color(0xFFEBB2FF),
                    fontFamily: 'Sora',
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ), // Monster title
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  selectedMonster!.monsterTitle,
                  style: TextStyle(
                    color: Color(0xFFEBB2FF),
                    fontFamily: 'Sora',
                    fontSize: 14,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ), // Monster description
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Power Level',
                          style: TextStyle(
                            color: Color(0xFFEBB2FF),
                            fontFamily: 'Sora',
                            fontSize: 14,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Text(
                          selectedMonster!.monsterPower.toString(),
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
                    LinearProgressIndicator(value: 0.75),
                  ],
                ),
              ),
              SizedBox(height: 20), // Progress Bar Container
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Choose your guardian',
                  style: TextStyle(
                    color: Color(0xFFE5E2E1),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Sora',
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MonsterCard(
                    monster: monsterList[0],
                    isSelected: selectedMonster == monsterList[0],
                    onTap: () {
                      setState(() {
                        selectedMonster = monsterList[0];
                      });
                    },
                  ), // Monster 1
                  MonsterCard(
                    monster: monsterList[1],
                    isSelected: selectedMonster == monsterList[1],
                    onTap: () {
                      setState(() {
                        selectedMonster = monsterList[1];
                      });
                    },
                  ), // monster 2

                  MonsterCard(
                    monster: monsterList[2],
                    isSelected: selectedMonster == monsterList[2],
                    onTap: () {
                      setState(() {
                        selectedMonster = monsterList[2];
                      });
                    },
                  ),
                  // monster 3
                ],
              ), // Row with monster cards - horizonal scroll view
            ],
          ),
        ),
      ),
    );
  }
}

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
