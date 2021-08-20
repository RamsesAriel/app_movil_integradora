import 'package:inicio_de_sesion/src/models/users_model.dart';
import 'package:dio/dio.dart';
//import 'package:get/get.dart';

class Provider {
  final _url = 'https://integradora-v2.herokuapp.com/api/v2/get-temperatures';
  final _http = Dio();

  Future<List<Temperatures>> obtenerTems() async {
    final _response = await _http.get(_url);
    List<dynamic> _data = _response.data;

    return _data
        .map((integradora) => Temperatures.fromMapJson(integradora))
        .toList();
  }
}
    /*_data.forEach((usuario) {
      final usuarioTem = Users.fromMapJson(usuario);
      usuario.add(usuarioTem);
    });*/

    //update();
    //return _data.map((results) => Users.fromMapJson(results)).toList();
