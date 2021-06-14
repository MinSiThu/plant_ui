import "package:flutter/material.dart";
import 'HomePage.dart';

main()=>runApp(PlantUIApp());

class PlantUIApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:"Plant UI",
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primarySwatch:Colors.blue
      ),
      home:HomePage(),
    );
  }
}
