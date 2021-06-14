import 'package:flutter/material.dart';
import 'colors.dart';
import 'LoginPage.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.lightGreen, Colors.lightGreenAccent],
  ).createShader(new Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(height: MediaQuery.of(context).size.height / 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page. ",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.bold)),
            Text(
              "Plant UI",
              style: TextStyle(
                  fontSize: 26,
                  foreground: Paint()..shader = linearGradient,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        Text(
          "Enjoy the experience",
          style: TextStyle(color: Colors.blueGrey, fontSize: 18),
        ),
        SizedBox(
          height: 10.0,
        ),
        Image(image: AssetImage("assets/welcome.jpg")),
        SizedBox(height: 20.0),
        GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width - 75,
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
      ]),
    );
  }
}
