import 'package:flutter/material.dart';

class PromoItem extends StatelessWidget {

  // TODO: constructor berparameter image, dll
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white60,
        margin: const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Container(
          width: 200.0,
          height: 80.0,
        )
    );
  }
}
