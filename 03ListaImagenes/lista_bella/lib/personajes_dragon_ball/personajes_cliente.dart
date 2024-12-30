import 'dart:convert';
import 'package:http/http.dart' as http;
import 'elementos_lista_model.dart';

class PersonajesCliente {
  final String apiUrl;

  PersonajesCliente(this.apiUrl);

  Future<List<ElementosListaModel>> fetchPersonajes() async {
    final url = '$apiUrl?page=1&limit=10';
    final response = await http.get(Uri.parse(url));

    List<ElementosListaModel> personajes = [];
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      for (var item in jsonData['data']) {
        ElementosListaModel personaje = ElementosListaModel.fromJson(item);
        personajes.add(personaje);
      }

      return personajes;
    } else {
      throw Exception('Failed to load personajes');
    }
  }
}
