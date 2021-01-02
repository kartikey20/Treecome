import 'package:flutter/material.dart';

class JournalPublicationsWidget extends StatelessWidget {
  Axis direction;
  bool visible;

  JournalPublicationsWidget(this.direction, this.visible);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "",
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          "",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Flex(
          direction: direction,
          children: [],
        )
      ],
    );
  }
}
