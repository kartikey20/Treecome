import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/Data/data.dart';

import 'ImageWidget.dart';

class ProceedingPublicationsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Text("Proceedings Publication",
              style: Theme.of(context).textTheme.headline1),
          Text(Proceedingtext, style: Theme.of(context).textTheme.bodyText1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageWidget(),
              ImageWidget(),
            ],
          )
        ],
      ),
      desktop: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Text("Proceeding Publication",
              style: Theme.of(context).textTheme.headline1),
          Text(Journaltext, style: Theme.of(context).textTheme.bodyText1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageWidget(),
              ImageWidget(),
            ],
          )
        ],
      ),
    );
  }
}
