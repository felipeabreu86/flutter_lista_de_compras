import 'package:flutter/material.dart';
import '/app/viewmodels/home_viewmodel.dart';
import 'package:stacked/stacked.dart';
import '/shared/constants.dart';

class HomeAppBar extends ViewModelWidget<HomeViewModel>
    implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key, reactive: false);

  @override
  AppBar build(BuildContext context, HomeViewModel model) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: RichText(
        text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: "Lista de ",
              style: TextStyle(color: kPrimaryColor, fontSize: 26),
            ),
            TextSpan(
              text: "Compras",
              style: TextStyle(color: ksecondaryColor, fontSize: 26),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
