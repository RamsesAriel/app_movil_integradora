import 'package:flutter/material.dart';
import 'package:inicio_de_sesion/src/widget/fondo.dart';

class Home extends StatelessWidget {
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
                _BtnText(),
                _Formulario(),
                _Formulario2(),
                _Formulario3(),
                _Formulario4()
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
      margin: EdgeInsets.only(top: 30.0),
      color: Color.fromRGBO(195, 238, 255, 1.5),
      width: _mediaQuery.width * 0.90,
      height: _mediaQuery.height * 0.35,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        elevation: 7.0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            color: Color.fromRGBO(202, 228, 237, 0.50),
            child: Column(children: [_TextoFormulario(), _Texto2()]),
          ),
        ),
      ),
    );
  }
}

class _Formulario2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      color: Color.fromRGBO(195, 238, 255, 1.5),
      width: _mediaQuery.width * 0.90,
      height: _mediaQuery.height * 0.35,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        elevation: 7.0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            color: Color.fromRGBO(202, 228, 237, 0.50),
            child: Column(children: [
              _TextoFormulario2(),
              SizedBox(height: 5.0),
              _TextoFormulario3(),
              SizedBox(height: 5.0),
              _TextoFormulario4(),
              SizedBox(height: 5.0),
              _TextoFormulario5(),
            ]),
          ),
        ),
      ),
    );
  }
}

class _Formulario3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      color: Color.fromRGBO(195, 238, 255, 1.5),
      width: _mediaQuery.width * 0.90,
      height: _mediaQuery.height * 0.35,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        elevation: 7.0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            color: Color.fromRGBO(202, 228, 237, 0.50),
            child: Column(children: [
              _TextoFormulario6(),
              SizedBox(height: 5.0),
              _TextoFormulario7(),
              _TextoFormulario8(),
              _TextoFormulario9(),
              _TextoFormulario10(),
              _TextoFormulario11(),
              _TextoFormulario12(),
            ]),
          ),
        ),
      ),
    );
  }
}

class _Formulario4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      color: Color.fromRGBO(195, 238, 255, 1.5),
      width: _mediaQuery.width * 0.90,
      height: _mediaQuery.height * 0.10,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        elevation: 7.0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            color: Color.fromRGBO(202, 228, 237, 0.50),
            child: Column(children: [
              _BtnText2(),
            ]),
          ),
        ),
      ),
    );
  }
}

class _BtnText2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/Page');
        },
        child: Icon(Icons.arrow_circle_down_sharp));
  }
}

class _TextoFormulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Text('INICIO',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
    );
  }
}

class _Texto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: _mediaQuery.width * 0.08),
      child: Column(
        children: [
          Image.asset('assets/logo2.0.png', scale: 4.8),
          //Text('REGISTRO DE USUARIOS',
          //style: TextStyle(
          //color: Colors.black,
          //fontWeight: FontWeight.bold,
          //fontSize: 25.0)),
          //Icon(Icons.settings, color: Colors.black,),
          //Image.asset("assets/logo.jpg.png")
        ],
      ),
    );
  }
}

class _Texto2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: _mediaQuery.width * 0.04),
      child: Column(
        children: [
          Image.asset('assets/proto2.1.png', scale: 0.8),
          //Text('REGISTRO DE USUARIOS',
          //style: TextStyle(
          //color: Colors.black,
          //fontWeight: FontWeight.bold,
          //fontSize: 25.0)),
          //Icon(Icons.settings, color: Colors.black,),
          //Image.asset("assets/logo.jpg.png")
        ],
      ),
    );
  }
}

class _BtnText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/Ajustes');
        },
        child: Icon(Icons.dashboard));
  }
}

class _TextoFormulario2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Container(
        child: Center(
          child: Text('INFORMACION',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
        ),
      ),
    );
  }
}

class _TextoFormulario3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Container(
        child: Center(
          child: Text('INTEGRADORA',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.blue.withOpacity(0.6))),
        ),
      ),
    );
  }
}

class _TextoFormulario4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Container(
        child: Center(
          child: Text('DE:              UT San Luis Rio Colorado',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18.0,
                  color: Colors.blue.withOpacity(0.6))),
        ),
      ),
    );
  }
}

class _TextoFormulario5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Container(
        child: Center(
          child: Text('Dirección: Jalisco, 83520 San Luis Río Colorado, Son ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.blue.withOpacity(0.6))),
        ),
      ),
    );
  }
}

class _TextoFormulario6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Container(
        child: Center(
          child: Text('INTEGRANTES',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.black.withOpacity(0.6))),
        ),
      ),
    );
  }
}

class _TextoFormulario7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 7.0, bottom: 7.0),
      child: Container(
        child: Center(
          child: Text('Bedolla Cifuentes Margarita',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.blue.withOpacity(0.6))),
        ),
      ),
    );
  }
}

class _TextoFormulario8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 7.0, bottom: 7.0),
      child: Container(
        child: Center(
          child: Text('Gonzalez Aleman Fabian',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.blue.withOpacity(0.6))),
        ),
      ),
    );
  }
}

class _TextoFormulario9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 7.0, bottom: 7.0),
      child: Container(
        child: Center(
          child: Text('Navarrete Garcia Abraham',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.blue.withOpacity(0.6))),
        ),
      ),
    );
  }
}

class _TextoFormulario10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 7.0, bottom: 7.0),
      child: Container(
        child: Center(
          child: Text('Ramirez Lopez Ramses',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.blue.withOpacity(0.6))),
        ),
      ),
    );
  }
}

class _TextoFormulario11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 7.0, bottom: 7.0),
      child: Container(
        child: Center(
          child: Text('Ruelas Zarza Jairo',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.blue.withOpacity(0.6))),
        ),
      ),
    );
  }
}

class _TextoFormulario12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 7.0, bottom: 7.0),
      child: Container(
        child: Center(
          child: Text('Sandoval Caballero Ruth',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.blue.withOpacity(0.6))),
        ),
      ),
    );
  }
}
