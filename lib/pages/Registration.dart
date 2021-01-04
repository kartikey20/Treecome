import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/DrawerWidget.dart';
import 'package:treecome/widgets/RegistrationTableWidget.dart';

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Scaffold(
        appBar: myAppBarWidget(context,"Registration"),
        drawer: MyDrawerWidget(),
        body: ResgistrationTableWidget(),
      ),
      desktop: Scaffold(
        appBar: myAppBarWidget(context,"Registration"),
        body: ResgistrationTableWidget(),
      ),
    );
  }
}
