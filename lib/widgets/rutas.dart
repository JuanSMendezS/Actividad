import 'package:flutter/material.dart';

class Rutas extends StatelessWidget {
  const Rutas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina Principal"),
        titleSpacing: 0.5,
        centerTitle: true,
        toolbarHeight: 70,
        toolbarOpacity: 0.9,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        backgroundColor: Colors.amber,
      ),
      body: Row(children: [
        ElevatedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/Ordenes');
            },
            child: const Text('Ordenar')),
        ElevatedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/Bienvenida');
            },
            child: const Text('Bienvenida')),
      ]),
    );
  }
}
