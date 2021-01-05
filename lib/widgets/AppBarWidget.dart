import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/pages/CallForPapers.dart';
import 'package:treecome/pages/Committee.dart';
import 'package:treecome/pages/ContactUs.dart';
import 'package:treecome/pages/Home.dart';
import 'package:treecome/pages/Registration.dart';

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
        leading: Icon(
          MdiIcons.palmTree,
          size: 40,
        ),
        title: Row(
          children: [
            Text(
              "Treecome",
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
        elevation: 0,
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Home(Theme.of(context).textTheme.headline1),
                ),
              );
            },
            child: Text(
              "Home",
              style: TextStyle(fontSize: 16),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Committee(Theme.of(context).textTheme.headline1),
                ),
              );
            },
            child: Text(
              "Committee",
              style: TextStyle(fontSize: 16),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CallForPapers(Theme.of(context).textTheme.headline1),
                ),
              );
            },
            child: Text(
              "Call for Papers",
              style: TextStyle(fontSize: 16),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Registration(Theme.of(context).textTheme.headline1),
                ),
              );
            },
            child: Text(
              "Registration",
              style: TextStyle(fontSize: 16),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ContactUs(Theme.of(context).textTheme.headline1),
                ),
              );
            },
            child: Text(
              "Contact Us",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    ),
  );
}
