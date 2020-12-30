import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/private_variables.dart';
class AboutConference extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Container(child: Text(about_conference),),
      desktop: Container(
        child: Text(about_conference,style: TextStyle(fontSize: 16, height: 2.0),
        ),
      ),
    );
  }
}
