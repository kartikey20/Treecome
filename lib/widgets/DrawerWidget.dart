import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:treecome/pages/CallForPapers.dart';
import 'package:treecome/pages/Committee.dart';
import 'package:treecome/pages/ContactUs.dart';
import 'package:treecome/pages/Home.dart';
import 'package:treecome/pages/Registration.dart';

class MyDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            color: HexColor("#ff309071"),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(
                        MdiIcons.windowClose,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        MdiIcons.palmTree,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        'Treecome 2021',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            title: Text('Home'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Home(Theme.of(context).textTheme.headline3),
                ),
              )
            },
          ),
          ListTile(
            title: Text('Committee'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Committee(Theme.of(context).textTheme.headline3),
                ),
              )
            },
          ),
          ListTile(
            title: Text('Call for Papers'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CallForPapers(Theme.of(context).textTheme.headline3),
                ),
              )
            },
          ),
          ListTile(
            title: Text('Registration'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Registration(Theme.of(context).textTheme.headline3),
                ),
              )
            },
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ContactUs(Theme.of(context).textTheme.headline3)),
              )
            },
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
