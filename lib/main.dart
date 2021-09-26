import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/shared/config/app_config.dart';
import '/app/routes.dart';
import '/app/views/screens/home/home_screen.dart';

// Função principal que inicializa o aplicativo.
void main() async {
  // Retorna uma instância de WidgetsBinding, criando e inicializando se necessário.
  WidgetsFlutterBinding.ensureInitialized();
  // Define as preferências de orientação de tela e inicializa o app.
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MyApp());
  });
}

/// Define a estrutura inicial do app.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: AppConfig.isDebugMode,
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
