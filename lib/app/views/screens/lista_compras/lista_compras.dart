import 'package:flutter/material.dart';

class ListaComprasScreen extends StatelessWidget {
  static String routeName = "/lista_de_compras";

  const ListaComprasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("A lista está vazia."),
      ),
    );
  }
}
