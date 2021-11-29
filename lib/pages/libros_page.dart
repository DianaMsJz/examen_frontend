import 'package:flutter/material.dart';

class LibrosPage extends StatefulWidget {
  LibrosPage({Key key}) : super(key: key);

  @override
  _LibrosPageState createState() => _LibrosPageState();
}

class _LibrosPageState extends State<LibrosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de libros'),
      ),
      body: Container(),
    );
  }
}
