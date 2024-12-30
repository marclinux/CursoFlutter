class ElementosListaModel {
  String nombre;
  String descripcion;
  String rutaImagen;

  ElementosListaModel({
    required this.nombre,
    required this.descripcion,
    required this.rutaImagen,
  });

  ElementosListaModel.fromJson(Map<String, dynamic> json)
      : nombre = json['nombre'],
        descripcion = json['descripcion'],
        rutaImagen = json['rutaImagen'];
}
