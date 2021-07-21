import 'package:flutter/material.dart';

const activecardcolor = Color(0xFF1D1E33);
const pressedcolor = Color(0xFF111328);

Color malecardcolor = activecardcolor;
Color femalecardcolor = activecardcolor;

void updatecolor(Gender selectedgender) {
  if (selectedgender == Gender.male) {
    if (malecardcolor == pressedcolor) {
      malecardcolor = activecardcolor;
    } else {
      malecardcolor = pressedcolor;
    }
  } else {
    if (selectedgender == Gender.female) {
      if (femalecardcolor == pressedcolor) {
        femalecardcolor = activecardcolor;
      } else {
        femalecardcolor = pressedcolor;
      }
    }
  }
}

enum Gender {
  male,
  female,
}

const kNumberTextstyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

const kTitlesmain = TextStyle(fontSize: 18.0, color: Color(0xFFB9BAC8));
const kTitlepink = TextStyle(fontSize: 35.0, color: Colors.pink);
const kLabeltext = TextStyle(fontSize: 16.0, color: Color(0xFF8D8E98));
const kCalulate = TextStyle(
    fontSize: 43.0, color: Colors.black87, fontWeight: FontWeight.w700);
int height = 160;
int weight = 50;
int age = 20;
const minheight = 120;
const maxheight = 200;
const cyan = Colors.cyan;
const whitecontainer = Color(0x70463B4B);
const cyanacc = Colors.cyanAccent;
const thumbclr = Colors.pinkAccent;
const overlaysliderclr = Colors.pink;
const iconclr = Colors.pink;

// selectedgender == Gender.male ? activecardcolor : pressedcolor,
// selectedgender == Gender.female ? pressedcolor : activecolor,
