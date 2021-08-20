import 'package:flutter/material.dart';
import 'package:inicio_de_sesion/src/widget/fondo.dart';

class Pantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          FondoWi(),
          SingleChildScrollView(
            child: Column(
              children: [_Texto(), _BtnCuenta()],
            ),
          )
        ],
      ),
    );
  }
}

class _BtnCuenta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/Registro');
      },
      child: Text('SIGUIENTE'),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 85.0)),
    );
  }
}

class _Texto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: _mediaQuery.width * 0.70),
      child: Column(
        children: [
          Image.asset('assets/logo2.0.png', scale: 0.7),
          Icon(Icons.arrow_right_alt_outlined, color: Colors.black, size: 90.0),
          //Image.asset("assets/logo.jpg.png")
        ],
      ),
    );
  }
}
