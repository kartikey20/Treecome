import 'package:flutter/material.dart';
import 'package:treecome/private_variables.dart';

class AboutConference extends StatelessWidget {
  var size;

  AboutConference(this.size);

  @override
  Widget build(BuildContext context) {
    return Text(about_conference, style: TextStyle(fontSize: size),);
  }
}