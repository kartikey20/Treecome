import 'package:flutter/material.dart';

class ProceedingPublicationsWidget extends StatelessWidget {
  Axis direction;
  bool visible;

  ProceedingPublicationsWidget(this.direction, this.visible);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Proceedings Publication",
          style: Theme.of(context).textTheme.headline1,
        ),
        Flex(
          direction: direction,
          children: [],
        )
      ],
    );
  }
}
