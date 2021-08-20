import 'package:flutter/material.dart';
import 'package:inicio_de_sesion/src/pages/Login.dart';
import 'package:inicio_de_sesion/src/pages/ajustes.dart';
import 'package:inicio_de_sesion/src/pages/detalles.dart';
//import 'package:inicio_de_sesion/src/pages/detalles.dart';
import 'package:inicio_de_sesion/src/pages/graficas.dart';
import 'package:inicio_de_sesion/src/pages/home_page.dart';
import 'package:inicio_de_sesion/src/pages/page.dart';
import 'package:inicio_de_sesion/src/pages/pantalla.dart';
import 'package:inicio_de_sesion/src/pages/registro_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Ventas',
      initialRoute: '/Pantalla',
      routes: {
        '/Registro': (_) => Registro(),
        '/Login': (_) => Login(),
        '/Home': (_) => Home(),
        '/Ajustes': (_) => Ajustes(),
        "/Pantalla": (_) => Pantalla(),
        "/Pantalla2": (_) => Pantalla2(),
        "/detalle": (_) => Detalles(),
        "/Page": (_) => HomePage(),
        //"/detalle": (_) => Detalles()
      },
    );
  }
}
