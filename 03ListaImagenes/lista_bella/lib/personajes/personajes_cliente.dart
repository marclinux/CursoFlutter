import 'dart:convert';
import 'package:http/http.dart' as http;
import 'elementos_lista_model.dart';

class PersonajesCliente {
  final String apiUrl;

  PersonajesCliente(this.apiUrl);

  Future<List<ElementosListaModel>> fetchPersonajes() async {
    final url = '$apiUrl?page=1&limit=20';
    final response = await http.get(Uri.parse(url));

    List<ElementosListaModel> personajes = [];
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(response.body);
      personajes = (jsonData['items'] as List)
        .map((item) => ElementosListaModel.fromJson(item))
        .toList();
      return personajes;
    } else {
      throw Exception('Failed to load personajes');
    }
  }
}
