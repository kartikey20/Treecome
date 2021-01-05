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
      mobile: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          SelectableText("Journal Publication", style: style),
          SelectableText(Journaltext,
              style: Theme.of(context).textTheme.bodyText1),
          ListView(
            padding: EdgeInsets.all(30),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
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
          )
        ],
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
