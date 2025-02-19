import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceRollMain());
}

// MaterialApp widget
class DiceRollMain extends StatelessWidget {
  const DiceRollMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DiceRoll(),
    );
  }
}
// End MaterialApp

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int diceNumber1 = 1;
  int diceNumber2 = 1; // Added second dice

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dice Roll",
          style: TextStyle(
            color: Colors.white, 
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => setState(() {
                // Rolling both dice
                diceNumber1 = Random().nextInt(6) + 1;
                diceNumber2 = Random().nextInt(6) + 1; // Added roll for second dice
                print('$diceNumber1, $diceNumber2');
              }), 
              child: Column(
                children: [
                  Image.asset("images/dice-$diceNumber1.png", width: 300),
                  Image.asset("images/dice-$diceNumber2.png", width: 300), // Added second dice image
                  Text(
                    'Total: ${diceNumber1 + diceNumber2}', // Added total display
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}