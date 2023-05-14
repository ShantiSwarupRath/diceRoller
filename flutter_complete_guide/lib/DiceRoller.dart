import 'dart:math';

import 'package:flutter/material.dart';
import './gradientChange.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 'assets/images/dice_6.png';
  void pressButton() {
    int face = Random().nextInt(6) + 1;
    setState(() {
      currentDice = 'assets/images/dice_$face.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          currentDice,
          width: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            onPressed: pressButton,
            child: const Text('Roll Dice'))
      ],
    );
  }
}
