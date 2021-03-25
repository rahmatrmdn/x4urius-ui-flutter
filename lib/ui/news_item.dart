import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {

  // TODO: constructor berparameter string content, image dll
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        margin: const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.0),
            topRight: Radius.circular(18.0),
          ),
        ),
        child: Container(
          width: 200.0,
          height: 160.0,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    topRight: Radius.circular(18.0),
                  ),
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ac libero ipsum. Curabitur iaculis leo ut eleifend convallis.',
                    textAlign: TextAlign.left,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
