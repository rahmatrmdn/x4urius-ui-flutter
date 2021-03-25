import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:slicing_home_x/ui/bottom_nav_item.dart';

// ignore: must_be_immutable
class BottomNav extends StatelessWidget {
  double yTransValue;

  BottomNav({@required this.yTransValue});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      color: Colors.transparent,
      duration: Duration(milliseconds: 300),
      transform: Matrix4.translationValues(0, yTransValue, 0),
      child: Container(
        height: 120,
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60.0),
          ),
          color: Color.fromARGB(255, 112, 112, 112),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: Column(
              children: [
                const Divider(
                  height: 1,
                  color: Colors.white60,
                  thickness: 3,
                  endIndent: 145,
                  indent: 130,
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavItem(name: 'Transaksi', icon: FontAwesome5.receipt),
                    BottomNavItem(name: 'Dompet', icon: FontAwesome5.wallet),
                    BottomNavItem(name: 'Pengaturan', icon: FontAwesome5.cogs),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
