import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  final List<Widget> _screens = [
    Container(color: Colors.white),
    Container(color: Colors.black),
    Container(color: Colors.blue),
    Container(color: Colors.green),
  ];

  /// Indica qual tela está selecionada.
  int _indexScreen = 0;

  bool get floatButtonVisibility => _indexScreen == 0 ? true : false;

  runHomeStartupLogic() {}

  Widget getScreen() {
    return _screens[_indexScreen];
  }

  bool isScreenActive(int index) => index == _indexScreen;

  void bottomNavBarItemOnPress(int index) {
    _indexScreen = index;
    notifyListeners();
  }
}
