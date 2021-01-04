import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/pages/CallForPapers.dart';
import 'package:treecome/pages/Committee.dart';
import 'package:treecome/pages/ContactUs.dart';
import 'package:treecome/pages/Home.dart';
import 'package:treecome/pages/Registration.dart';
import 'package:treecome/widgets/DrawerWidget.dart';

Widget myAppBarWidget(BuildContext context, String title) {
  return PreferredSize(
    preferredSize: Size.fromHeight(56),
    child: ScreenTypeLayout(
      mobile: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search_rounded),
            onPressed: () {},
          )
        ],
        title: Text(title),
      ),
      desktop: AppBar(
        leading: Icon(MdiIcons.palmTree),
        title: Row(
          children: [
            Text("Treecome"),
          ],
        ),
        elevation: 0,
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Text("Home"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Committee()),
              );
            },
            child: Text("Committee"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CallForPapers()),
              );
            },
            child: Text("Call for Papers"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Registration()),
              );
            },
            child: Text("Registration"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUs()),
              );
            },
            child: Text("Contact Us"),
          ),
        ],
      ),
    ),
  );
}
