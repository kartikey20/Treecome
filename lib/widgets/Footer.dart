import 'package:flutter/material.dart';
import "package:charcode/charcode.dart";
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _launchURL() async {
      const url = 'https://github.com/kartikey20/Treecome/graphs/contributors';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Container(
      height: 40,
      color: HexColor("#ff309071"),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Text(
                  '\u00a9 Treecome 2021 | Made with \u2665 by our contributors',style: TextStyle(color: Colors.white),),
              onTap: _launchURL,
            ),
          ),
        ],
      ),
    );
  }
}
