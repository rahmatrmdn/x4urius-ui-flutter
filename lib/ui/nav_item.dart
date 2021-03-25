import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NavItem extends StatelessWidget {

  bool selected;
  String name;

  var icon, onPressed;
  var menuTextStyle = TextStyle(
    fontSize: 16.0,
    color: Colors.white,
  );

  NavItem({@required this.onPressed, this.selected, this.name, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18.0),
        child: Container(
          margin: const EdgeInsets.all(0),
          color: selected ? Colors.white70.withOpacity(0.4) : Colors.transparent,
          child: Padding(
            padding:
            selected ? const EdgeInsets.all(10.0) : const EdgeInsets.all(0.0),
            child: Row(
              children: <Widget>[
                Icon(icon, color: Colors.white70),
                SizedBox(width: 8.0),
                Text(
                  name,
                  style: menuTextStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
