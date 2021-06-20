import 'package:first_app/Home.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.green,
      accentColor: Colors.white,
    ),
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    home: Home(),
  ));
}
