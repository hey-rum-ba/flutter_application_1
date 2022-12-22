import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final url =
        "https://satsang-foundation.org/wp-content/uploads/2022/08/Ganesha-Chathurthi-TSF-4.jpg";
    return Drawer(
        child: Container(
      color: Colors.deepPurple,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/login_image.png"),
              ),
              accountName: Text("Heramba Panda",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.lato().fontFamily)),
              accountEmail: Text("herambapanda2000@gmail.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.lato().fontFamily)),
            ),
          ),
          ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.lato().fontFamily,
                ),
                textScaleFactor: 1.2,
              )),
          ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.lato().fontFamily,
                ),
                textScaleFactor: 1.2,
              )),
          ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                "E-Mail me",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.lato().fontFamily,
                ),
                textScaleFactor: 1.2,
              )),
        ],
      ),
    ));
  }
}
