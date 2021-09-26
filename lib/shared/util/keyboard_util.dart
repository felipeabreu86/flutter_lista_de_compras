import 'package:flutter/cupertino.dart';

/// Singleton responsável por tratar os eventos do teclado.
class KeyboardUtil {
  static final KeyboardUtil _singleton = KeyboardUtil._internal();
  factory KeyboardUtil() {
    return _singleton;
  }
  KeyboardUtil._internal();

  /// Remove o foco do teclado, escondendo-o do usuário.
  static void hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
