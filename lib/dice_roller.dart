import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

var currentRoll = Random().nextInt(6)+1;

class _DiceRollerState extends State<DiceRoller> {

  void rollDice() {
    setState(() {
      currentRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentRoll.png",
          width: 200,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(241, 0, 0, 0),
              backgroundColor: const Color.fromARGB(255, 239, 214, 141),
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text(
            "Roll the dice",
          ),
        ),
      ],
    );
  }
}
