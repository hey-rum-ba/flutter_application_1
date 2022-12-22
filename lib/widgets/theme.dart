import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontFamily: GoogleFonts.lato().fontFamily,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ));

  static ThemeData darkltheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark);
}
