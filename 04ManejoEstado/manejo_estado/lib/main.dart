import 'package:flutter/material.dart';

void main() {
  runApp(ManejoEstados());
}

class ManejoEstados extends StatelessWidget {
  const ManejoEstados({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Colorful List UI'),
          backgroundColor: Colors.pinkAccent, // Pink AppBar
        ),
        body: Center(
          child: Row(children: [
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: SwitchListTile(
                  value: isSwitched,
                  onChanged: (value) {
                    isSwitched = value;
                  },
                  title: const Text('Cambiar'),
                )),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: isSwitched ? Colors.redAccent : Colors.blueAccent,
                  width: 100.0,
                  height: 100.0,
                )),
          ]),
        ),
      ),
    );
  }
}
