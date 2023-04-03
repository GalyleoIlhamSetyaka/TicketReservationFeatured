import 'package:aplikasi01/img.dart';
import 'package:aplikasi01/pemesanan.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi01/backup.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
  List<String> _images = [
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
          MaterialPageRoute(builder: (context) => MyCarousel()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color.fromRGBO(54, 181, 54, 100),
          child: ListView(
            children: [
              SizedBox(
                height: 50,
                child: Container(
                  child: const Text(
                    'APLIKASI PEMESANAN TIKET HUTAN PINUSAN KALILO',
                    textAlign: TextAlign.center,
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
                width: 364,
                height: 234,
                child: Stack(
                  children: <Widget>[
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
                          color: Color.fromRGBO(217, 217, 217, 100),
                        ),
                      ),
                    ),
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
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: 230,
                      height: 180,
                      padding: EdgeInsets.all(10),
                      child: const Center(
                        child: Text(
                          'Hutan Pinus Kalilo merupakan objek wisata bertemakan alam yang berada di Desa Tlogoguwo, Kecamatan Kaligesing, Kabupaten Purworejo, Jawa Tengah. Objek wisata ini buka mulai dari jam 8:00-5:00',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
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
                          minimumSize: Size(111, 40),
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 13),
                          textStyle: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 30,
                child: Container(
                  child: const Text(
                    'GALLERI',
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
                      items: _images.map((image) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
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
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                _current == index ? Colors.white : Colors.grey,
                          ),
                        );
                      }).toList(),
                    ),
                  ],
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
                            margin:
                                const EdgeInsets.symmetric(horizontal: 10.0),
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
              Container(
                height: 100,
                color: Colors.yellow,
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                color: Colors.orange,
              ),
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
