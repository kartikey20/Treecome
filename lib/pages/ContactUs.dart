import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/ContactUsForm.dart';
import 'package:treecome/widgets/ContactUsList.dart';
import 'package:treecome/widgets/DrawerWidget.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Scaffold(
        drawer: MyDrawerWidget(),
        appBar: myAppBarWidget(context, "Contact Us"),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ContactUsForm(),
        ),
      ),
      desktop: Scaffold(
        appBar: myAppBarWidget(context, "Contact Us"),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(500,30,500,30),
          child: ContactUsForm(),
        ),
      ),
    );
  }
}
