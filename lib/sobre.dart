import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Sobre extends StatefulWidget {
  @override
  _DevState createState() => _DevState();
}

class _DevState extends State<Sobre> {
  WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'O soccer 2021 foi desenvolvido, \npara proporcional um meio fácil\n para você ficar por dentro das, \nprincipais notícias, jogos e \nplacares de futebol Mundial.\nDesenvolvido por Geovane Araujo!!\n ',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.deepPurple,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ));
  }
}
