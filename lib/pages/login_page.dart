import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  MoveToHomePage(BuildContext context) async {
    if(_formKey.currentState!.validate()){
      setState(
        () {
          changeButton = true;
        },
      );
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);

      setState(
        () {
          changeButton = false;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username can not be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can not be empty";
                        } 
                        else if (value.length < 6) {
                          return "Password should atleast be 6 character strong";
                        }
                        return null;
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Material(
                borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                color: Colors.deepPurple,
                child: InkWell(
                  onTap: () => MoveToHomePage(context),
                  child: AnimatedContainer(
                    height: 50,
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text("Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0)),
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}
