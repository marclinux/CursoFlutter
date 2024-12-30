import 'package:flutter/material.dart';
import 'package:listas_personajes/personajes/elementos_lista_model.dart';
import 'package:listas_personajes/personajes/personajes_cliente.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personajes Goku'),
          backgroundColor: Colors.pinkAccent, // Pink AppBar
        ),
        body: FutureBuilder<List<ElementosListaModel>>(
          future: obtenPersonajes(),
          builder:
              (context, AsyncSnapshot<List<ElementosListaModel>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Error al cargar los personajes'),
              );
            } else {
              return ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: snapshot.data!.length, // Example: 10 items
                itemBuilder: (context, index) {
                  return ListItem(
                    imageUrl:
                    snapshot.data![index].image, // Example image URL
                    title: snapshot.data![index].name, // Example title
                    description: snapshot
                        .data![index].description, // Example description
                    index: index,
                  );
                },
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your action here
          },
          backgroundColor: Colors.pinkAccent,
          child: const Icon(Icons.add), // Pink FAB
        ),
      ),
    );
  }
}

Future<List<ElementosListaModel>> obtenPersonajes() async {
  List<ElementosListaModel> personajes = [];
  // Example: Fetch data from an API
  PersonajesCliente cliente = PersonajesCliente(
      'https://dragonball-api.com/api/characters'); // Example API URL
  personajes = await cliente.fetchPersonajes();
  return personajes;
}

class ListItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final int index;

  const ListItem({super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade50, Colors.blue.shade100],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                // Title and Description
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87, // Dark pink title
                            ),
                          )),
                      const SizedBox(height: 8),
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            description,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black54, // Black description text
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 6,
                          )),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                // Image
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:
                      Colors.red.shade900, // Pink border around the image
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
