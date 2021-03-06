import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
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
                _titulos(),
                _botonesRedondeados()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottonNavigationBar(context)
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto){
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
            sigmaX: 2.5,
            sigmaY: 2.5
        ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                radius: 35.0,
                child: Icon(icono, color: Colors.white, size: 30.0 ,),
              ),
              Text(texto, style: TextStyle(color: color),)
            ],
          ),
        ),
      ),
    );
  }


  Widget _botonesRedondeados(){
    /*
    Los table row debe tener todos la misma cantidad de hijos
     */
    return Table(
      children: [
        TableRow(
            children: [
              _crearBotonRedondeado(Colors.blue, Icons.home, 'General'),
              _crearBotonRedondeado(Colors.blue, Icons.bar_chart, 'Estado')
            ]
        ),
        TableRow(
            children: [
              _crearBotonRedondeado(Colors.blue, Icons.attach_money, 'Ingresos'),
              _crearBotonRedondeado(Colors.blue, Icons.money_off, 'Egresos')
            ]
        ),
        TableRow(
            children: [
              _crearBotonRedondeado(Colors.blue, Icons.stairs, 'Metas'),
              _crearBotonRedondeado(Colors.blue, Icons.settings, 'Ajustes')
            ]
        ),
      ],
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

  Widget _bottonNavigationBar(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(
            color: Color.fromRGBO(116, 117, 152, 1.0)
          )
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart, size: 30.0,),
              title: Container()
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle, size: 30.0,),
              title: Container()
          ),
        ],
      ),
    );
  }

}
