import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {

  String name;
  IconData icon;

  BottomNavItem({@required this.name, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0)),
            color: Colors.amberAccent,
            margin: const EdgeInsets.all(0.0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(icon,
                  color: Colors.white),
            )),
        Text(name,
            style: TextStyle(color: Colors.white)),
      ],
    );
  }

}