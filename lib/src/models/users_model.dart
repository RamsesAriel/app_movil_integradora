class Temperatures {
  int? id;
  double? temperatura;
  String? fecha;
  String? hora;

  Temperatures({this.id, this.temperatura, this.fecha, this.hora});
  factory Temperatures.fromMapJson(Map<String, dynamic> data) => Temperatures(
        id: data['id'],
        temperatura: data['temperatura'] / 1,
        fecha: data['fecha'],
        hora: data['hora'],
      );
}
