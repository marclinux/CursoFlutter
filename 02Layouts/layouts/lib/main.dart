import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Aplicacion de Layouts'),
            actions: [
              IconButton(
                icon: const Icon(Icons.edit),
                tooltip: 'Editar',
                onPressed: () {
                  debugPrint('Editar');
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                tooltip: 'Eliminar',
                onPressed: () {
                  debugPrint('Eliminar');
                },
              ),
            ],
          ),
          body: Row(children: [
            Expanded(
                child: Container(
              child: Text(
                  'Este es un texto bastante largo para ver el resultado de la aplicacion y como a traves del uso de layouts podemos ordenar este tipo de problemas. Debemos poner mas texto para que se vea el sobreflujo de la informacion'),
            )),
            Expanded(
              child: Image(image: AssetImage('assets/images/logo.png')),
            ),
          ])),
    );
  }
}
