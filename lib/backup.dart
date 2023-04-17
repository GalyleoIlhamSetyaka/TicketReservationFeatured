import 'dart:async';
import 'package:ReservasiKalilo/img.dart';
import 'package:ReservasiKalilo/pemesanan.dart';
import 'package:flutter/material.dart';
import 'package:ReservasiKalilo/main.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:ReservasiKalilo/login.dart';

class MyWebView extends StatefulWidget {
  final String url;

  const MyWebView({Key? key, required this.url}) : super(key: key);

  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl:
            'https://app.lapentor.com/sphere/kalilo', // Memuat url dari paramerter widget
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
