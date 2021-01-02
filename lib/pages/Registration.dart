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
        appBar: myAppBar("Registration"),
        drawer: MyDrawer(),
        body: ResgistrationTable(false),
      ),
      desktop: Scaffold(
        appBar: myAppBar("Registration"),
        body: ResgistrationTable(true),
      ),
    );
  }
}
