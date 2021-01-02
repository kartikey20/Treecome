import 'package:flutter/material.dart';

class JournalPublications extends StatelessWidget {
   Axis direction;
   JournalPublications(this.direction);
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
