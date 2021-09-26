import 'package:flutter/widgets.dart';
import '/app/views/screens/home/home_screen.dart';

// Configura o mapeamento das rotas das telas do aplicativo.
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
};
