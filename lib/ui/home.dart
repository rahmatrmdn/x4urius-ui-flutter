import 'package:flutter/material.dart';
import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:slicing_home_x/ui/jumbotron.dart';
import 'package:slicing_home_x/ui/menu_item.dart';
import 'package:slicing_home_x/ui/bottom_nav.dart';
import 'package:slicing_home_x/ui/promo_item.dart';
import 'package:slicing_home_x/ui/video_item.dart';
import 'nav_item.dart';
import 'news_item.dart';

var menuTitleTextStyle = TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700);
var sectionTitleTextStyle =
    TextStyle(fontSize: 16.0, fontWeight: FontWeight.w900);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //TODO: tambahkan GestureDetector pada widget yang diinginkan
  double yTransValue = 0;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      // ignore: missing_return
      onNotification: (notification) {
        print(notification.metrics.axisDirection);
        print(notification.metrics.axis);

        if (notification.scrollDelta.sign == 1) {
          setState(() {
            yTransValue = 110;
          });
        } else if (notification.scrollDelta.sign == -1) {
          setState(() {
            yTransValue = 0;
          });
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Arc(
                            edge: Edge.BOTTOM,
                            arcType: ArcType.CONVEY,
                            height: 25.0,
                            child: Container(
                              color: Colors.amberAccent,
                              height: 150.0,
                            ),
                          ),
                          SizedBox(
                            height: 100.0,
                          )
                        ],
                      ),
                      SafeArea(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 16.0, bottom: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  NavItem(
                                    onPressed: () {},
                                    selected: false,
                                    icon: FontAwesome.percent,
                                    name: 'Promo',
                                  ),
                                  NavItem(
                                    onPressed: () {},
                                    selected: true,
                                    icon: FontAwesome.home,
                                    name: 'Beranda',
                                  ),
                                  NavItem(
                                    onPressed: () {},
                                    selected: false,
                                    icon: FontAwesome.bell,
                                    name: 'Notifikasi',
                                  ),
                                ],
                              ),
                            ),
                            Jumbotron(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30.0, bottom: 8.0),
                    child: Text(
                      'Produk Utama',
                      textAlign: TextAlign.left,
                      style: menuTitleTextStyle,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 22.0),
                    height: 70.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        for (var i = 5; i >= 1; i--) MenuItem()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30.0, bottom: 8.0),
                    child: Text(
                      'Pembayaran, Top Up',
                      textAlign: TextAlign.left,
                      style: menuTitleTextStyle,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 22.0),
                    height: 70.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        for (var i = 2; i >= 1; i--) MenuItem()
                      ],
                    ),
                  ),
                  const Divider(
                    height: 40,
                    thickness: 2,
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(right: 50.0, left: 50.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Promo',
                          textAlign: TextAlign.left,
                          style: sectionTitleTextStyle,
                        ),
                        Text(
                          'Lihat Semua',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.blueAccent),
                        )
                      ],
                    ),
                  ), // Promo
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 22.0),
                    height: 80.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        for (var i = 3; i >= 1; i--) PromoItem()
                      ],
                    ),
                  ), // Promo
                  const Divider(
                    height: 40,
                    thickness: 2,
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(right: 50.0, left: 50.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Berita',
                          textAlign: TextAlign.left,
                          style: sectionTitleTextStyle,
                        ),
                        Text(
                          'Lihat Semua',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ],
                    ),
                  ), // Berita
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 22.0),
                    height: 160.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        for (var i = 3; i >= 1; i--) NewsItem()
                      ],
                    ),
                  ), // Berita
                  const Divider(
                    height: 40,
                    thickness: 2,
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(right: 50.0, left: 50.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Video Tutorial',
                          textAlign: TextAlign.left,
                          style: sectionTitleTextStyle,
                        ),
                        Text(
                          'Lihat Semua',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.blueAccent),
                        )
                      ],
                    ),
                  ), // Video
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 22.0),
                    height: 160.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        for (var i = 3; i >= 1; i--) VideoItem()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data:
                    Theme.of(context).copyWith(canvasColor: Colors.transparent),
                child: BottomNav(yTransValue: yTransValue)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
