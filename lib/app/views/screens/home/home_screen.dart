import 'package:flutter/material.dart';
import '/app/views/screens/home/components/app_bar.dart';
import 'package:stacked/stacked.dart';
import '/app/viewmodels/home_viewmodel.dart';
import 'components/body.dart';
import 'components/bottom_navigator.dart';
import 'components/floating_action_button.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.runHomeStartupLogic(),
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          appBar: HomeAppBar(),
          body: HomeBody(),
          bottomNavigationBar: HomeBottomNavigationBar(),
          floatingActionButton: HomeFloatingActionButton(),
        ),
      ),
    );
  }
}
