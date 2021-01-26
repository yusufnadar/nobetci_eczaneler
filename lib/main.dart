import 'package:flutter/material.dart';
import 'package:nobetci_eczane/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "RaleWay",
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
