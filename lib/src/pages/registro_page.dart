//import 'dart:html';
//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:inicio_de_sesion/src/widget/fondo.dart';

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          FondoWi(),
          SingleChildScrollView(
            child: Column(
              children: [_Texto(), _Formulario()],
            ),
          )
        ],
      ),
    );
  }
}

class _Formulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      color: Color.fromRGBO(195, 238, 255, 1.5),
      width: _mediaQuery.width * 0.90,
      height: _mediaQuery.height * 0.65,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        elevation: 7.0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            color: Color.fromRGBO(202, 228, 237, 0.50),
            child: Column(children: [
              _TextoFormulario(),
              _Nombre(),
              SizedBox(height: 15.0),
              _InputReg(),
              SizedBox(height: 15.0),
              _PasswordReg(),
              SizedBox(height: 15.0),
              _BtnCuenta(),
              SizedBox(height: 15.0),
              _BtnText(),
            ]),
          ),
        ),
      ),
    );
  }
}

class _Nombre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Tu nombre',
          labelText: 'Nombre Completo',
          prefixIcon: Icon(Icons.person_add),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
    );
  }
}

class _BtnText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/Login');
      },
      child: Text('Ya tengo cuenta '),
    );
  }
}

class _BtnCuenta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/Home');
      },
      child: Text('REGISTRARME'),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 45.0)),
    );
  }
}

class _PasswordReg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'PASSWORD',
          labelText: 'PASSWORD',
          helperText: 'Minimo 6 letras',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          prefixIcon: Icon(Icons.lock),
        ),
      ),
    );
  }
}

class _InputReg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'ejemplo@gmail.com',
          labelText: 'CORREO ELECTRONICO',
          prefixIcon: Icon(Icons.email_rounded),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
    );
  }
}

class _TextoFormulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 20.0, bottom: 30.0),
        child: (Text('REGISTRATE',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0))));
  }
}

class _Texto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: _mediaQuery.width * 0.10),
      child: Column(
        children: [
          Image.asset('assets/logo2.0.png', scale: 5.0),
          //Text('REGISTRO DE USUARIOS',
          //style: TextStyle(
          //color: Colors.black,
          //fontWeight: FontWeight.bold,
          //fontSize: 25.0)),
          Icon(Icons.app_registration, color: Colors.black, size: 40.0),
          //Image.asset("assets/logo.jpg.png")
        ],
      ),
    );
  }
}
