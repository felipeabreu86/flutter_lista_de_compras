import 'package:flutter/material.dart';
import '/app/viewmodels/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeBody extends ViewModelWidget<HomeViewModel> {
  const HomeBody({
    Key? key,
  }) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return model.getScreen();
  }
}
