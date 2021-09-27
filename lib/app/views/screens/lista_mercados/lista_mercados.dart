import 'package:flutter/material.dart';
import '/app/viewmodels/lista_mercados_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ListaMercadosScreen extends StatelessWidget {
  static String routeName = "/lista_de_mercados";

  const ListaMercadosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ListaMercadosViewModel>.nonReactive(
      viewModelBuilder: () => ListaMercadosViewModel(),
      builder: (context, model, child) => SafeArea(
        child: Center(
          child: Container(
            child: Text("Lista de Mercados"),
          ),
        ),
      ),
    );
  }
}
