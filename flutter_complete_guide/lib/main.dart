import 'package:flutter/material.dart';
import './gradientChange.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(body: GradientChange([
            Color.fromARGB(255, 11, 1, 102),
            Color.fromARGB(255, 140, 2, 246)
          ])),
  ));
}

