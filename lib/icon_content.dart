import 'package:flutter/material.dart';

class icon extends StatelessWidget {
  icon({required this.icons, required this.label});
  final IconData icons;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icons,
            size: 80,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
          )
        ]);
  }
}
