import 'package:flutter/material.dart';

class reusable extends StatelessWidget {
  reusable({required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: colour),
    );
  }
}
