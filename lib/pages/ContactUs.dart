import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/ContactUsWidget.dart';
import 'package:treecome/widgets/DrawerWidget.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Scaffold(
        drawer: MyDrawerWidget(),
        appBar: myAppBarWidget("Contact Us"),
        body: ContactUsWidget(1, 2, 2, 2, 2, 2, false),
      ),
      desktop: Scaffold(
        appBar: myAppBarWidget("ContactUs"),
        body: ContactUsWidget(1, 2, 2, 2, 2, 2, true),
      ),
    );
  }
}
