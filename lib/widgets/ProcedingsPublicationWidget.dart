import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/Data/data.dart';

import 'ImageWidget.dart';

class ProceedingPublicationsWidget extends StatelessWidget {
  TextStyle style;
  ProceedingPublicationsWidget(this.style);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          SelectableText("Proceedings Publication",
              style: style),
          SelectableText(Proceedingtext,
              style: Theme.of(context).textTheme.bodyText1),
          Padding(
            padding: const EdgeInsets.all(30),
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                ImageWidget(),
                SizedBox(
                  height: 20,
                ),
                ImageWidget(),
              ],
            ),
          )
        ],
      ),
      desktop: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          SelectableText("Proceeding Publication",
              style: style),
          SelectableText(Journaltext,
              style: Theme.of(context).textTheme.bodyText1),
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
