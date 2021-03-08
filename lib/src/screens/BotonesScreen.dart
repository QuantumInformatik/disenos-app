import 'dart:math';

import 'package:flutter/material.dart';

class BotonesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titulos()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Hola')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text('Hola')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text('Hola')
          )
        ],
      ),
    );
  }

  Widget _titulos(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Classify transaction', style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
            ),
            Text('Classify this transaction into a particular category hello world',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,),
            )
          ],
        ),
      ),
    );
  }

  Widget _fondoApp(){
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0,0.6),
          end: FractionalOffset(0.0,1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );
    
    final cajaRosa = Transform.rotate(
      angle: -pi/5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0)
              ]
            )
        ),
      ),
    );

    return Stack(
      children: [
        gradiente,
        Positioned(
          child: cajaRosa,
          top: -100.0,
        )
      ],

    );

  }



}
