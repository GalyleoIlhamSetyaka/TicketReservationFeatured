import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyBottomNavbar(),
  ));
}

class MyBottomNavbar extends StatefulWidget {
  @override
  _MyBottomNavbar createState() => _MyBottomNavbar();
}

class _MyBottomNavbar extends State<MyBottomNavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
              width: 390,
              height: 826,
              child: Stack(children: <Widget>[
                Positioned(
                    top: 253,
                    left: 14,
                    child: Container(
                        width: 364,
                        height: 268,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 50,
                              left: 126,
                              child: Container(
                                  width: 111,
                                  height: 87,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    color: Color.fromRGBO(75, 69, 69, 1),
                                  ))),
                          Positioned(
                              top: 50,
                              left: 253,
                              child: Container(
                                  width: 111,
                                  height: 87,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    color: Color.fromRGBO(75, 69, 69, 1),
                                  ))),
                          Positioned(
                              top: 50,
                              left: 0,
                              child: Container(
                                  width: 111,
                                  height: 87,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    color: Color.fromRGBO(75, 69, 69, 1),
                                  ))),
                          Positioned(
                              top: 181,
                              left: 0,
                              child: Container(
                                  width: 111,
                                  height: 87,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    color: Color.fromRGBO(75, 69, 69, 1),
                                  ))),
                          Positioned(
                              top: 181,
                              left: 126,
                              child: Container(
                                  width: 111,
                                  height: 87,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    color: Color.fromRGBO(75, 69, 69, 1),
                                  ))),
                          Positioned(
                              top: 181,
                              left: 253,
                              child: Container(
                                  width: 111,
                                  height: 87,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    color: Color.fromRGBO(75, 69, 69, 1),
                                  ))),
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
                              top: 30,
                              left: 236,
                              child: Container(
                                  width: 111,
                                  height: 87,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    color: Color.fromRGBO(75, 69, 69, 1),
                                  ))),
                          Positioned(
                              top: 184,
                              left: 23,
                              child: Container(
                                  width: 111,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    color: Color.fromRGBO(75, 69, 69, 1),
                                  ))),
                        ]))),
                Positioned(
                    top: 540,
                    left: 20,
                    child: Container(
                        width: 323,
                        height: 168,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 31,
                              left: 0,
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
                Positioned(
                    top: 767,
                    left: 0,
                    child: Container(
                        width: 390,
                        height: 59,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 390,
                                  height: 59,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(217, 217, 217, 1),
                                  ))),
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
