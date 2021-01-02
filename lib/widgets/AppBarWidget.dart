import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

Widget myAppBarWidget(String title) {
  return PreferredSize(
    preferredSize: Size.fromHeight(56),
    child: ScreenTypeLayout(
      mobile: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Row(
          children: [
            Icon(MdiIcons.palmTree),
            Text(title),
          ],
        ),
      ),
      desktop: AppBar(
        centerTitle: false,
        title: Text("Treecome"),
        elevation: 0,
        actions: [
          FlatButton(
            onPressed: () {},
            child: Text("Home"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Committee"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Call for Papers"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Registration"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Contact Us"),
          ),
        ],
      ),
    ),
  );
}
