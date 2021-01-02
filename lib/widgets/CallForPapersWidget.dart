import 'package:flutter/material.dart';

class CallForPapersWidget extends StatelessWidget {
  var visible;

  CallForPapersWidget(this.visible);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Visibility(
          visible: visible,
          child: Text(
            "Call for Papers",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Text(
          "",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Column(
          children: [],
        )
      ],
    );
  }
}
