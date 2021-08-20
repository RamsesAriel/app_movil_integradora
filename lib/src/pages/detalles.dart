import 'package:flutter/material.dart';
import 'package:inicio_de_sesion/src/models/users_model.dart';

class Detalles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Temperatures temp =
        ModalRoute.of(context)!.settings.arguments as Temperatures;
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperatura de Hoy'),
      ),
      body: Center(
        child: Container(
          child: Center(
            child: Text(
              temp.temperatura!.toString(),
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),

            /*backgroundColor: Colors.white,
          body: new Stack(
            fit: StackFit.expand,
            children: <Widget>[
              
            ],*/
          ),
        ),
      ),

      //body: Center(
      // child: Image.network(result.image!),
      //),
    );
  }
}
