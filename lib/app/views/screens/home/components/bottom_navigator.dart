import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '/app/viewmodels/home_viewmodel.dart';
import '/shared/constants.dart';

class BottomNavBar extends ViewModelWidget<HomeViewModel> {
  const BottomNavBar({
    Key? key,
  }) : super(key: key, reactive: false);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomIconButton(0, Icons.home),
          CustomIconButton(1, Icons.attach_money),
          CustomIconButton(2, Icons.history),
        ],
      ),
    );
  }
}

class CustomIconButton extends ViewModelWidget<HomeViewModel> {
  const CustomIconButton(
    this.index,
    this.icon, {
    Key? key,
  }) : super(key: key, reactive: true);

  final int index;
  final IconData icon;

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return IconButton(
      color: model.isScreenActive(index) ? kPrimaryColor : ksecondaryColor,
      iconSize: 28,
      onPressed: () => model.bottomNavBarItemOnPress(index),
      icon: Icon(icon),
    );
  }
}
