import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicoScreen extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 20.0, color: Colors.grey);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto()
        ],

      ),
    );
  }

  Widget _crearTexto(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
      child: Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _crearAcciones(){
    return Container(
      decoration: BoxDecoration(color: Colors.black45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _accion(Icons.call, 'CALL'),
          _accion(Icons.near_me, 'ROUTE'),
          _accion(Icons.share, 'SHARE')

        ],
      ),
    );
  }

  Widget _accion(IconData icon, String texto){
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 40.0,),
        SizedBox(height: 5.0,),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
      ],
    );

  }

  Widget _crearImagen(){
   return  Image(
      image: NetworkImage('https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg'),
    );
  }

  Widget _crearTitulo(){
    return Container(
      decoration: BoxDecoration(color: Colors.brown),
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Lago 1 alemanio', style: estiloTitulo,),
                SizedBox(height: 7.0,),
                Text('Lago 2, germany', style: estiloSubTitulo)
              ],
            ),
          ),
          Icon(
            Icons.star, color: Colors.red, size: 30.0,
          ),
          Text('41', style: TextStyle(fontSize: 20.0),)
        ],
      ),
    );
  }


}
