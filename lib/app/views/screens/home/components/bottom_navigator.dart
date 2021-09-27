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
      currentIndex: model.currentScreenIndex,
      onTap: (indice) {
        model.bottomNavBarItemOnPress(indice);
      },
      type: BottomNavigationBarType.fixed,
      fixedColor: kPrimaryColor,
      unselectedItemColor: ksecondaryColor,
      items: [
        BottomNavigationBarItem(
          label: "Lista Atual",
          icon: Icon(
            Icons.list,
          ),
        ),
        BottomNavigationBarItem(
          label: "Histórico",
          icon: Icon(
            Icons.history,
          ),
        ),
      ],
    );
  }
}
