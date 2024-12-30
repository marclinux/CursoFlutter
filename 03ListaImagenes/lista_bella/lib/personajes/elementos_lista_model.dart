class ElementosListaModel {
  int id;
  String name;
  String description;
  String image;

  ElementosListaModel({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
  });

  factory ElementosListaModel.fromJson(Map<String, dynamic> json)
  {
    return ElementosListaModel(id: json['id'],
        name: json['name'],
        description: json['description'],
        image: json['image']);
  }
}
