import 'package:examen_frontend/pages/libros_page.dart';
import 'package:examen_frontend/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examen',
      initialRoute: 'register',
      routes: {
        'register': (BuildContext context) => RegisterPage(),
        'lista': (BuildContext context) => LibrosPage()
      },
    );
  }
}
