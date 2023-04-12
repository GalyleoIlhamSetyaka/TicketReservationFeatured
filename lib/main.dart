import 'package:aplikasi01/img.dart';
import 'dart:async';
import 'package:aplikasi01/login.dart';
import 'package:aplikasi01/pemesanan.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi01/backup.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyBottomNavbar(),
  ));
}

class MyBottomNavbar extends StatefulWidget {
  
  @override
  _MyBottomNavbar createState() => _MyBottomNavbar();
}

class _MyBottomNavbar extends State<MyBottomNavbar> {
  int _selectedIndex = 0;

  int _current = 0;
  final List<String> _images = [
    'assets/image/asxxx.jpg',
    'assets/image/bg.jpg',
    'assets/image/kalilo2.jpeg',
    'assets/image/tmbnl.jpg',
    'assets/image/hutan-pinus-kalilo.jpg',
  ];

  final List<String> _packages = [
    'assets/PP/HPK-1.png',
    'assets/PP/HPK-2.png',
    'assets/PP/HPK-3.png',
  ];

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyBottomNavbar()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PemesananWidget()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  MyWebView(url: 'https://app.lapentor.com/sphere/kalilo')),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => login()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView(
        children: [
          Container(
            width: 364,
            height: 234,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/image/background.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 364,
                      height: 234,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Selamat Datang di Aplikasi Kalilo,',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Mudahkan pemesanan tiket melalui aplikasi',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(height: 20),
                Positioned(
                  top: 184,
                  left: 23,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PemesananWidget()));
                    },
                    child: Text('Pesan Sekarang'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(70, 30),
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 13),
                      textStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Card(
              elevation: 5.0,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: Row(
                      children: [
                        const Text(
                          'GALLERI',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Helvetica',
                            fontSize: 20,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        CarouselSlider(
                          items: _images.map((image) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage(image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                          options: CarouselOptions(
                            autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 16 / 9,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: _images.map((image) {
                            int index = _images.indexOf(image);
                            return Container(
                              width: 8.0,
                              height: 8.0,
                              margin: const EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 2.0,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == index
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 30,
            child: Container(
              child: const Text(
                'PAKET PENGUNJUNG',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Helvetica',
                    fontSize: 20,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
            ),
          ),
          Container(
              child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: _packages.map((package) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(package),
                            fit: BoxFit.contain,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _packages.map((package) {
                  int index = _packages.indexOf(package);
                  return Container(
                    width: 16.0,
                    height: 16.0,
                    margin: EdgeInsets.symmetric(horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? Colors.blue : Colors.grey,
                    ),
                  );
                }).toList(),
              ),
            ],
          )),
          SizedBox(height: 20),
Center(
      child: Container(
        width: 320,
        height: 276,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Lokasi',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Inter',
                fontSize: 26,
                fontWeight: FontWeight.normal,
              ),
            ),
            Expanded(
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(-7.7516916, 110.1198335),
                  zoom: 13.0,
                ),
                layers: [
                  TileLayerOptions(
                    urlTemplate:
                        'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                    subdomains: ['a', 'b', 'c'],
                  ),
                  MarkerLayerOptions(
                    markers: [
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: LatLng(-7.7516916, 110.1198335),
                        builder: (ctx) => Container(
                          child: Icon(Icons.location_on),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.threesixty),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        iconSize: 25.0,
      ),
    );
  }
}
