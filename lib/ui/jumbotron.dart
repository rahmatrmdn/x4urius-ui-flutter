import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class Jumbotron extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 112, 112, 112),
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              margin: EdgeInsets.all(18.0),
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(9.0),
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('Total Saldo Emas',
                            style: TextStyle(fontSize: 13.0)),
                        SizedBox(width: 3.0),
                        Text('(100gram)', style: TextStyle(fontSize: 10.0)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 8.0, right: 3.0),
                          child: Text('Rp',
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.blue)),
                        ),
                        Text('880.000.000',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.blue)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('-58.000',
                            style:
                                TextStyle(fontSize: 10.0, color: Colors.red)),
                        SizedBox(width: 3.0),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            margin: const EdgeInsets.all(0),
                            color: Colors.redAccent,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    FontAwesome5.caret_down,
                                    color: Colors.white70,
                                    size: 16.0,
                                  ),
                                  SizedBox(width: 2.0),
                                  Text(
                                    '0,38 %',
                                    style: TextStyle(
                                        fontSize: 10.0, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.all(18.0),
              padding: const EdgeInsets.only(right: 6.0, top: 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    'Dompet',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      margin: const EdgeInsets.all(0),
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Container(
                              color: Colors.amberAccent,
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                FontAwesome5.plus,
                                color: Colors.black45,
                                size: 16.0,
                              )),
                          SizedBox(width: 2.0),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8.0, right: 3.0),
                                child: Text('Rp',
                                    style: TextStyle(fontSize: 10.0)),
                              ),
                              Text(
                                '263 Jt',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
