import 'package:flutter/widgets.dart';
import 'views/screens/historico/historico.dart';
import 'views/screens/home/home_screen.dart';
import 'views/screens/lista_compras/lista_compras.dart';

// Configura o mapeamento das rotas das telas do aplicativo.
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  ListaComprasScreen.routeName: (context) => ListaComprasScreen(),
  HistoricoScreen.routeName: (context) => HistoricoScreen(),
};
