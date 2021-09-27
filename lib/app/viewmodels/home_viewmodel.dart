import 'package:flutter/material.dart';
import 'package:lista_compras/app/routes.dart';
import 'package:lista_compras/shared/config/screen_config.dart';

class HomeViewModel extends ChangeNotifier {
  bool isListCreated = false;

  /// Armazena o índice da tela selecionada.
  int _indexScreen = 0;

  /// Retorna o índice da tela selecionada.
  int get currentScreenIndex => _indexScreen;

  /// Indica se o float buttom deve ser exibido ou não.
  bool get floatButtonVisibility =>
      _indexScreen == 0 && isListCreated ? true : false;

  /// Retorna se o [index] é o mesmo índice [_indexScreen] tela ativa.
  bool isScreenActive(int index) => index == _indexScreen;

  /// Executa a lógica inical da tela [HomeScreen].
  runHomeStartupLogic(BuildContext context) {
    ScreenConfig(context);
  }

  /// Retorna a tela atual por meio do índice selecionado [_indexScreen].
  Widget getScreen() {
    return screens[_indexScreen];
  }

  /// Atualiza o índice das telas e notifica os ouvintes.
  void bottomNavBarItemOnPress(int index) {
    _indexScreen = index;
    notifyListeners();
  }
}
