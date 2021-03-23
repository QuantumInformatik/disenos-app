import 'package:disenos_app/src/screens/BasicoScreen.dart';
import 'package:disenos_app/src/screens/BotonesScreen.dart';
import 'package:disenos_app/src/screens/ScrollScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'diseños',
      initialRoute: 'botones',
      routes: {
        'basico' : (BuildContext context)=> BasicoScreen(),
        'scroll' : (BuildContext context)=> ScrollScreen(),
        'botones' : (BuildContext context)=> BotonesScreen()
      },

    );
  }
}
