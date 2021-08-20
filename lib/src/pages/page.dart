import 'package:flutter/material.dart';
import 'package:inicio_de_sesion/src/providers/providers.dart';
import 'package:inicio_de_sesion/src/models/users_model.dart';

class HomePage extends StatelessWidget {
  final _providerNew = Provider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de Temperaturas'),
      ),
      body: FutureBuilder(
        future: _providerNew.obtenerTems(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Temperatures>> snapshot) {
          final listtemp = snapshot.data;
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: listtemp!.length,
                itemBuilder: (BuildContext context, int i) {
                  final integradora = listtemp[i];
                  return _DisenosCha(integradora);
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class _DisenosCha extends StatelessWidget {
  final Temperatures integradora;
  _DisenosCha(this.integradora);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () =>
          Navigator.pushNamed(context, '/detalle', arguments: integradora),
      title: Text(
        integradora.temperatura!.toString(),
        style: TextStyle(
          fontSize: 30,
          color: Colors.blue,
        ),
      ),
      trailing: Text(
        integradora.hora!,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black87,
        ),
      ),
      leading: Text(
        integradora.fecha!,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black87,
        ),
      ),
      //subtitle: Text(temp.createAt!.toString()),
      /*leading: Text(result.species!),
      trailing: Image.network(result.image!),*/
    );
  }
}
