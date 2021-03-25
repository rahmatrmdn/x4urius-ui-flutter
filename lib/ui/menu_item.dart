import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: Colors.black45)),
      child: Container(
        width: 55.0,
        height: 70.0,
      ),
    );
  }
}
