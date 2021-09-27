import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '/app/viewmodels/home_viewmodel.dart';
import '/shared/constants.dart';

class HomeBottomNavigationBar extends ViewModelWidget<HomeViewModel> {
  const HomeBottomNavigationBar({
    Key? key,
  }) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return BottomNavigationBar(
      //backgroundColor: ksecondaryColor,
      currentIndex: model.currentScreenIndex,
      onTap: (indice) {
        model.bottomNavBarItemOnPress(indice);
      },
      type: BottomNavigationBarType.fixed,
      fixedColor: kPrimaryColor,
      unselectedItemColor: Colors.black45,
      items: [
        BottomNavigationBarItem(
          label: "Lista Atual",
          icon: Icon(
            Icons.list,
            size: 28,
          ),
        ),
        BottomNavigationBarItem(
          label: "Histórico",
          icon: Icon(
            Icons.history,
            size: 28,
          ),
        ),
        BottomNavigationBarItem(
          label: "Mercados",
          icon: Icon(
            Icons.shopping_cart,
            size: 28,
          ),
        ),
      ],
    );
  }
}
