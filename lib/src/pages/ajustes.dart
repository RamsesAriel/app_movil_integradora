import 'package:flutter/material.dart';
import 'package:inicio_de_sesion/src/widget/fondo.dart';

class Ajustes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          FondoWi(),
          SingleChildScrollView(
            child: Column(
              children: [
                _Texto(),
                _Formulario(),
              ],
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
      margin: EdgeInsets.only(top: 85.0),
      color: Color.fromRGBO(195, 238, 255, 1.5),
      width: _mediaQuery.width * 0.90,
      height: _mediaQuery.height * 0.60,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        elevation: 7.0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            color: Color.fromRGBO(202, 228, 237, 0.50),
            child: Column(children: [
              SizedBox(height: 30.0),
              _BtnRegistrarme(),
              SizedBox(height: 30.0),
              _BtnNuevoUsuario(),
              SizedBox(height: 30.0),
              _BtnLogin(),
              SizedBox(height: 30.0),
              _BtnHome()
            ]),
          ),
        ),
      ),
    );
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
          //Image.asset('assets/LOGO.png', scale: 1.0),
          Text('AJUSTES GENERALES',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0)),
          Icon(Icons.settings_backup_restore, color: Colors.black, size: 50.0),
          //Image.asset("assets/logo.jpg.png")
        ],
      ),
    );
  }
}

class _BtnRegistrarme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/Page');
      },
      child: Text('Historial'),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20.0)),
    );
  }
}

class _BtnNuevoUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/Registro');
      },
      child: Text('REGISTRAR NUEVO USUARIO'),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20.0)),
    );
  }
}

class _BtnHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/Home');
      },
      child: Text('REGRESAR A INICIO'),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20.0)),
    );
  }
}

class _BtnLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/Login');
      },
      child: Text('INICIAR SESION CON NUEVO USUARIO'),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20.0)),
    );
  }
}
