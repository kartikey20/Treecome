import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:treecome/pages/CallForPapers.dart';
import 'package:treecome/pages/Committee.dart';
import 'package:treecome/pages/ContactUs.dart';
import 'package:treecome/pages/Home.dart';
import 'package:treecome/pages/Registration.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                Icon(MdiIcons.palmTree),
                Text("Treecome"),
              ],
            ),
          ),
          ListTile(
            title: Home(),
            onTap: () {},
          ),
          ListTile(
            title: Commttiee(),
            onTap: () {},
          ),
          ListTile(
            title: CallForPapers(),
            onTap: () {},
          ),
          ListTile(
            title: Registration(),
            onTap: () {},
          ),
          ListTile(
            title: ContactUs(),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
