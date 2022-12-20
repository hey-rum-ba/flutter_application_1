import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Catalog Application"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello guys this is  my first flutter application"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
