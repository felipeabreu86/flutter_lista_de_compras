import 'package:flutter/material.dart';
import '/app/viewmodels/home_viewmodel.dart';
import '/shared/constants.dart';
import 'package:stacked/stacked.dart';

class HomeFloatingActionButton extends ViewModelWidget<HomeViewModel> {
  const HomeFloatingActionButton({
    Key? key,
  }) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Visibility(
      child: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        backgroundColor: ksecondaryColor,
      ),
      visible: model.floatButtonVisibility,
    );
  }
}
