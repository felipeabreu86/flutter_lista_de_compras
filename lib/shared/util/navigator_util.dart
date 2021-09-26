import 'package:flutter/cupertino.dart';
import '../../app/routes.dart';

/// Singleton responsável por facilitar a navegação entre telas.
class NavigatorUtil {
  static final NavigatorUtil _singleton = NavigatorUtil._internal();
  factory NavigatorUtil() {
    return _singleton;
  }
  NavigatorUtil._internal();

  /// Retorna se a [rota] passada por parâmetro existe.
  static bool _rotaExiste(String rota) {
    return routes.containsKey(rota);
  }

  /// Abre uma nova tela no topo da pilha de telas.
  ///
  /// [context] é o contexto da tela em que a tela será criada.
  /// [rota] é a rota da tela que será exibida ao usuário.
  static void navegarParaTela(BuildContext context, String rota) {
    if (_rotaExiste(rota)) {
      Navigator.pushNamed(context, rota);
    }
  }

  /// Abre uma nova tela no topo da pilha de telas, porém, remove todas as telas
  /// anteriores na pilha até a tela passada em [fecharTelasAteRota].
  ///
  /// [context] é o contexto da tela em que a tela será criada.
  /// [rota] é a rota da tela que será exibida ao usuário.
  /// [fecharTelasAteRota] será a tela anterior à [rota] na pilha de telas.
  static void navegarParaTelaEFecharAte(
    BuildContext context,
    String rota,
    String fecharTelasAteRota,
  ) {
    if (_rotaExiste(rota) && _rotaExiste(fecharTelasAteRota)) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        rota,
        ModalRoute.withName(fecharTelasAteRota),
      );
    }
  }

  /// Fecha a tela atual e a substitui por outra dada a [rota] da nova tela.
  ///
  /// [context] é o contexto da tela em que a tela será criada.
  /// [rota] é a rota da tela que será exibida ao usuário.
  static void substituirTela(BuildContext context, String rota) {
    if (_rotaExiste(rota)) {
      Navigator.pushReplacementNamed(context, rota);
    }
  }

  /// Fecha a tela atual por meio do [context] passado por parâmetro.
  static void fecharTela(BuildContext context) {
    Navigator.pop(context);
  }
}
