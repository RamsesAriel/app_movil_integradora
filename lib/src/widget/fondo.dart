import 'package:flutter/material.dart';

class FondoWi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _Fondo(),
        _MasFondo(bottom: 30.0, left: 50.0),
        _MasFondo(top: 30.0, right: 50.0),
        //_MasFondo(bottom: 150.0, left: 30.0),
        //_MasFondo(top: 150.0, right: 30.0),
        //_MasFondo(top: 100.0, right: 150.0),
      ],
    );
  }
}

class _MasFondo extends StatelessWidget {
  final double? bottom;
  final double? right;
  final double? left;
  final double? top;

  _MasFondo({this.bottom, this.right, this.left, this.top});

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;

    return Positioned(
      bottom: bottom,
      right: right,
      left: left,
      top: top,
      child: Container(
        width: _mediaQuery.width * 0.18,
        height: _mediaQuery.height * 0.10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Color.fromRGBO(226, 247, 255, 0.5),
        ),
      ),
    );
  }
}

class _Fondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    return Container(
      //child: Placeholder(), checar el espacio para el fondo
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            //Color.fromRGBO(255, 255, 255, 10),
            //Color.fromRGBO(255, 255, 255, 10),
            //Color.fromRGBO(226, 247, 255, 10),
            //Color.fromRGBO(226, 247, 255, 10),
            Color.fromRGBO(152, 199, 218, 0.5),
            Color.fromRGBO(152, 199, 218, 0.5),
          ],
        ),
      ),
      width: double.infinity,
      height: _mediaQuery.height * 0.22,
    );
  }
}
