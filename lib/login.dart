import 'dart:async';
import 'package:ReservasiKalilo/img.dart';
import 'package:ReservasiKalilo/pemesanan.dart';
import 'package:flutter/material.dart';
import 'package:ReservasiKalilo/main.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'backup.dart';

class login extends StatefulWidget {
  @override
  _login createState() => _login();
}

class _login extends State<login> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(100, 181, 246, 1),
                Color.fromRGBO(43, 90, 219, 1),
              ],
            ),
          ),
          child: Center(
            child: Card(
              color: Color.fromRGBO(216, 216, 216, 1),
              elevation: 8,
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.account_circle_rounded,
                      size: 50,
                      color: Colors.black,
                    ),
                    Text('LOGIN PENGELOLA',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
