import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/Data/data.dart';
import 'package:treecome/widgets/ImageWidget.dart';

class JournalPublicationsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Text("Journal Publication",
              style: Theme.of(context).textTheme.headline1),
          Text(Journaltext, style: Theme.of(context).textTheme.bodyText1),
          ListView(
        shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              ImageWidget(),
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
          Text("Journal Publication",
              style: Theme.of(context).textTheme.headline1),
          Text(Journaltext, style: Theme.of(context).textTheme.bodyText1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageWidget(),
              ImageWidget(),
              ImageWidget(),
            ],
          )
        ],
      ),
    );
  }
}
