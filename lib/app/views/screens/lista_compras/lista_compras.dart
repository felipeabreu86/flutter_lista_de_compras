import 'package:flutter/material.dart';
import '/app/viewmodels/lista_compras_viewmodel.dart';
import '/shared/config/screen_config.dart';
import '/shared/constants.dart';
import 'package:stacked/stacked.dart';

class ListaComprasScreen extends StatelessWidget {
  static String routeName = "/lista_de_compras";

  const ListaComprasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ListaComprasViewModel>.nonReactive(
      viewModelBuilder: () => ListaComprasViewModel(),
      builder: (context, model, child) => SafeArea(
        child: Center(
          child: TextButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(2.0),
              fixedSize: MaterialStateProperty.all<Size>(
                Size.fromWidth(0.7 * ScreenConfig.screenWidth),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: ksecondaryColor),
                ),
              ),
            ),
            child: Text(
              "Criar Nova Lista",
              style: TextStyle(fontSize: 18),
            ),
            onPressed: null,
          ),
        ),
      ),
    );
  }
}
