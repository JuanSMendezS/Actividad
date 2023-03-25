import 'package:flutter/material.dart';

class Ordenes extends StatefulWidget {
  const Ordenes({super.key});

  @override
  State<Ordenes> createState() => _OrdenesState();
}

class _OrdenesState extends State<Ordenes> {
  String nombres = '';
  String direccion = '';
  String textocheck1 = 'Pepperoni';
  String textocheck2 = 'Cebollas';
  bool valuepep = false;
  bool valueceb = false;
  String tamano = '';
  TextEditingController txtNombres = TextEditingController();
  TextEditingController textDireccion = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido'),
      ),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: TextField(
            controller: txtNombres,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nombres',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: TextField(
            controller: textDireccion,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Direccion',
            ),
          ),
        ),
        Column(
          children: [
            const Text('Tamaño'),
            const Divider(),
            RadioListTile(
              title: const Text('8 pulgadas'),
              value: '8',
              groupValue: tamano,
              onChanged: (value) {
                setState(() {
                  tamano = value.toString();
                });
              },
            ),
            RadioListTile(
              title: const Text('10 pulgadas'),
              value: '10',
              groupValue: tamano,
              onChanged: (value) {
                setState(() {
                  tamano = value.toString();
                });
              },
            ),
            RadioListTile(
              title: const Text('12 pulgadas'),
              value: '12',
              groupValue: tamano,
              onChanged: (value) {
                setState(() {
                  tamano = value.toString();
                });
              },
            )
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: const Column(
                children: [
                  Text("Topping"),
                  Divider(),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Checkbox(
                    value: valuepep,
                    onChanged: (value) {
                      setState(() {
                        valuepep = !valuepep;
                      });
                    },
                  ),
                  const Text("Pepperoni")
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
              child: Row(
                children: <Widget>[
                  Checkbox(
                    value: valueceb,
                    onChanged: (value) {
                      setState(() {
                        valueceb = !valueceb;
                      });
                    },
                  ),
                  const Text("Cebollas")
                ],
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, '/voucher', arguments: {});
          },
          child: const Text(
            'Ordenar',
            style: TextStyle(
                color: Color.fromARGB(255, 46, 2, 180),
                fontSize: 20,
                letterSpacing: 1),
          ),
        )
      ]),
    );
  }
}
