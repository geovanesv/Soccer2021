import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Placar extends StatefulWidget {
  @override
  _PlacarState createState() => _PlacarState();
}

class _PlacarState extends State<Placar> {
  WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: WebView(
              initialUrl: 'https://www.placardefutebol.com.br/',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _controller = webViewController;
              },
            )));
  }
}
