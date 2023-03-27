import 'package:aplikasi01/img.dart';
import 'package:aplikasi01/pemesanan.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    home: MyBottomNavbar(),
  ));
}

class MyBottomNavbar extends StatefulWidget {
  @override
  _MyBottomNavbar createState() => _MyBottomNavbar();

  final List<String> images = [
    'https://picsum.photos/id/1015/300/200',
    'https://picsum.photos/id/1016/300/200',
    'https://picsum.photos/id/1018/300/200',
    'https://picsum.photos/id/1019/300/200',
  ];
}

class _MyBottomNavbar extends State<MyBottomNavbar> {
  int _selectedIndex = 0;
  late PageController _pageController;
  int _currentPage = 0;

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyBottomNavbar()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PemesananWidget()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyCarousel()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
              key: Key('background'),
              width: 390,
              height: 826,
              color: Colors.red,
              child: Stack(children: <Widget>[
                Positioned(
                    key: Key('Kolom Deskripsi'),
                    top: 0,
                    left: 14,
                    child: Container(
                        width: 364,
                        height: 234,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 364,
                                  height: 234,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Color.fromRGBO(247, 0, 255, 1),
                                  ))),
                          Positioned(
                              top: 30,
                              left: 236,
                              child: Container(
                                  width: 111,
                                  height: 87,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    color: Color.fromRGBO(238, 115, 115, 1),
                                  ))),
                          Positioned(
                              top: 184,
                              left: 23,
                              child: Container(
                                  width: 111,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    color: Color.fromRGBO(163, 212, 26, 1),
                                  ))),
                        ]))),
                Positioned(
                    key: Key('Galleri'),
                    top: 253,
                    left: 14,
                    child: Container(
                        width: 364,
                        height: 268,
                        child: const Stack(children: <Widget>[
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Text(
                                'GALLERI',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 20,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                        ]))),
                Positioned(
                    top: 540,
                    left: 20,
                    child: SizedBox(
                        width: 323,
                        height: 168,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 31,
                              left: 0,
                              child: Container(
                                  width: 152,
                                  height: 137,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Color.fromRGBO(217, 217, 217, 1),
                                  ))),
                          Positioned(
                              top: 31,
                              left: 171,
                              child: Container(
                                  width: 152,
                                  height: 137,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Color.fromRGBO(217, 217, 217, 1),
                                  ))),
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Text(
                                'PAKET PENGUNJUNG',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 20,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              )),
                        ]))),
              ])),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        iconSize: 40.0,
      ),
    );
  }
}
