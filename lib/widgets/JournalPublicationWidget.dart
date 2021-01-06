import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/Data/data.dart';
import 'package:treecome/widgets/ImageWidget.dart';

class JournalPublicationsWidget extends StatelessWidget {
  TextStyle style;

  JournalPublicationsWidget(this.style);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText("Journal Publication", style: style),
            SelectableText(Journaltext,
                style: Theme.of(context).textTheme.bodyText1),
            ImageWidget(),
            SizedBox(
              height: 20,
            ),
            ImageWidget(),
            SizedBox(
              height: 20,
            ),
            ImageWidget(),
          ],
        ),
      ),
      desktop: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          SelectableText("Journal Publication", style: style),
          SelectableText(Journaltext,
              style: Theme.of(context).textTheme.bodyText1),
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
