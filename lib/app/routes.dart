import 'package:flutter/widgets.dart';
import 'views/screens/lista_mercados/lista_mercados.dart';
import 'views/screens/historico/historico.dart';
import 'views/screens/home/home_screen.dart';
import 'views/screens/lista_compras/lista_compras.dart';

/// Lista de telas.
final List<Widget> screens = [
  ListaComprasScreen(),
  HistoricoScreen(),
  ListaMercadosScreen(),
];

// Configura o mapeamento das rotas das telas do aplicativo.
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  ListaComprasScreen.routeName: (context) => ListaComprasScreen(),
  ListaMercadosScreen.routeName: (context) => ListaMercadosScreen(),
  HistoricoScreen.routeName: (context) => HistoricoScreen(),
};
