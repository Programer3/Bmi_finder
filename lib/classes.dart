import 'package:bmi_calculator/functions_vars_enum_const_condition.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NormalContainer extends StatelessWidget {
  NormalContainer({
    required this.colour,
    required this.cardchild,
  });

  final Color colour;
  final Widget cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      width: 165,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15),
      ),
      child: cardchild,
    );
  }
}

class Columnchild extends StatelessWidget {
  Columnchild({required this.icon, required this.label});

  late final IconData icon;
  late final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon, //change after eat
            size: 80,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            label,
            style: kTitlesmain,
          )
        ],
      ),
    );
  }
}

class Iconbordercontainer extends StatelessWidget {
  Iconbordercontainer({
    required this.icon,
  });

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: whitecontainer, shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Icon(
          icon,
          size: 40,
          color: iconclr,
        ),
      ),
    );
  }
}
