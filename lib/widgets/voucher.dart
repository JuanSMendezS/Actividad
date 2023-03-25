import 'package:actividad/models/VoucherScreemArguments.dart';
import 'package:flutter/material.dart';

class Voucher extends StatefulWidget {
  const Voucher({super.key});

  @override
  State<Voucher> createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as VoucherScreemArguments;
    String getToppings(){
      String toppings = "";
      for (String e in args.topping) {
        toppings = "$toppings$e, ";
      }
      return toppings;
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text("Orden Recibida"),
          leading: const BackButton(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox.fromSize(size: const Size(50,50)),
              ],
            ),
            Text("Nombres: ${args.name}", style: const TextStyle(fontSize: 17),),
            Text("Dirección: ${args.address}", style: const TextStyle(fontSize: 17),),
            Text("Tamaño seleccionado: ${args.size} pulgadas", style: const TextStyle(fontSize: 17),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox.fromSize(size: const Size(20,20)),
              ],
            ),
            Text("Toppings: ${getToppings()}", style: const TextStyle(fontSize: 17),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox.fromSize(size: const Size(50,50)),
              ],
            ),
            Text("Total a pagar: 💵💰🪙${args.total}", style: const TextStyle(fontSize: 17),),
          ],
        ),
    );
  }
}
