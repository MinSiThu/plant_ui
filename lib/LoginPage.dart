import 'package:flutter/material.dart';
import 'package:plant_ui/BrowsePage.dart';
import './colors.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(140.0),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Color(0xFFC5CCD6)),
            flexibleSpace: Container(
              margin: EdgeInsets.symmetric(vertical: 35.0, horizontal: 20.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Color(0xFF323643),
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
          width: MediaQuery.of(context).size.width - 40,
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: lightGrey),
                      focusColor: Colors.black,
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF979797))),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF979797))),
                      focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF979797))),
                      disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF979797))),
                      errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF979797))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF979797)))),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BrowsePage()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.6),
                          gradient: LinearGradient(
                              colors: [primaryColor1, secondaryColorGreen],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.lightGreenAccent,
                                blurRadius: 65,
                                offset: Offset(0, 20))
                          ]),
                      child: Center(
                        child: Text("Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                      ),
                    )),
                SizedBox(height: 20),
                Text(
                  "Forget your password?",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.lightBlue,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          ),
        )));
  }
}
