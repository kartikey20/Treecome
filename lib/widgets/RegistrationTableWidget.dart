import 'package:flutter/material.dart';
import 'package:treecome/pages/Registration.dart';

class ResgistrationTableWidget extends StatelessWidget {
  bool visible;

  ResgistrationTableWidget(this.visible);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        children: [
          Visibility(
            visible: visible,
            child: Text("Registration",
                style: Theme.of(context).textTheme.headline1),
          ),
          Table()
        ],
      ),
    );
  }
}
