import 'package:flutter/material.dart';

class BasicoScreen extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 20.0, color: Colors.grey);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
              image: NetworkImage('https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg'),
          ),
          Container(
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
          )
        ],

      ),
    );
  }
}
