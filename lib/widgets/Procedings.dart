import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProceedingPublications extends StatelessWidget {
  Axis direction;

  ProceedingPublications(this.direction);

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
