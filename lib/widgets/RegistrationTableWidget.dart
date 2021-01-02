import 'package:flutter/material.dart';
import 'package:treecome/pages/Registration.dart';

class ResgistrationTable extends StatelessWidget {
  bool visible;

  ResgistrationTable(this.visible);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        children: [
          Visibility(
            visible: visible,
            child: Text("Registration"),
          ),
          Table()
        ],
      ),
    );
  }
}
