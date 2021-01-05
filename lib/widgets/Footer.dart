import 'package:flutter/material.dart';
import "package:charcode/charcode.dart";
import 'package:flutter/rendering.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            child: Text("Made with ${$hearts.toString()} by Kartikey"),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
