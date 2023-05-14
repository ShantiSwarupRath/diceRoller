import 'package:flutter/material.dart';
import './DiceRoller.dart';



class GradientChange extends StatelessWidget {
  final List<Color> colorList;
  const GradientChange(this.colorList, {super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorList,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child:DiceRoller(), 
      ),
    );
  }
}

// class StyledImage extends StatelessWidget {
//   const StyledImage({super.key});
//   @override
//   Widget build(context) {
//     return ;
//   }
// }
