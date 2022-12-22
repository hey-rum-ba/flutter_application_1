import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Catalog Application"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.lightbulb,
              color: Colors.white,
            ),
            onPressed: () {
              MyTheme.lightTheme(context);
            },
          )
        ],
      ),
      body: Center(
        child: Container(
          child: Text("Hello guys this is  my first flutter application"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
