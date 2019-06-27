import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

AssetImage diceImage;

@override
void initState(){
  super.initState();
  setState(() {
   diceImage = one; 
  });
}

void rollDice(){
  int random =(1+ Random().nextInt(6));
   
   AssetImage  newImage ;

 switch(random){
   case 1:
   newImage = one;
   break;
   case 2:
   newImage = two;
    break;
   case 3:
   newImage = three;
    break;
   case 4:
   newImage = four;
    break;
   case 5:
   newImage = five;
    break;
   case 6:
   newImage = six;
    break;
   default:
 }
 setState(() {
  diceImage = newImage; 
 });
   
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
title: Text('Dice roller'),
      ),
      body: Container(
        child: Center(
child: Column(
  mainAxisAlignment: MainAxisAlignment.center ,
children: <Widget>[
  Image(
image: diceImage,
width: 200.0,
height: 200.0,
  ),
  Container(
   margin: EdgeInsets.only(top: 100.0),
   child: RaisedButton(
  color: Colors.yellow,
  padding: EdgeInsets.fromLTRB(30.0,15.0,30.0,15.0),
  child: Text('Roll the dice!!'),
  onPressed: rollDice,
),
  )
],
),
        ),
      ),
      );
  }
}