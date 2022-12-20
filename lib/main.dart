import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( home: HomePage());
  }
}
