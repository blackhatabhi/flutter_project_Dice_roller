import 'package:flutter/material.dart';
import 'package:dice_roller/HomePage.dart';

void main() => runApp(Dice());
 
class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.orange,

      ),
      home: HomePage(),
    );
  }
}