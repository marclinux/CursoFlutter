import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion desde cero',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplicacion desde cero'),
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
        body: Center(
          child: Text('Hola mundo'),
        ),
      ),
    );
  }
}
