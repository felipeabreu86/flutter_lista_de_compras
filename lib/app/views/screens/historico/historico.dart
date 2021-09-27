import 'package:flutter/material.dart';

class HistoricoScreen extends StatelessWidget {
  static String routeName = "/historico";

  const HistoricoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Histórico"),
      ),
    );
  }
}
