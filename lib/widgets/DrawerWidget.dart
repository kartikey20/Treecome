import 'package:flutter/material.dart';
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                IconButton(
                    icon: Icon(MdiIcons.windowClose),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Icon(MdiIcons.palmTree,size: 50,),
                    Text(
                      'Treecome 2021',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            title: Text('Home'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              )
            },
          ),
          ListTile(
            title: Text('Committee'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Committee()),
              )
            },
          ),
          ListTile(
            title: Text('Call for Papers'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CallForPapers()),
              )
            },
          ),
          ListTile(
            title: Text('Registration'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Registration()),
              )
            },
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUs()),
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
