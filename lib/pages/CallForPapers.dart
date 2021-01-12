import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/Data/data.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/CallForPapersWidget.dart';

class CallForPapers extends StatelessWidget {
  TextStyle style;

  CallForPapers(this.style);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Scaffold(
        appBar: myAppBarWidget(context, "Call for papers"),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SelectableText(
                  callForPapers,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ),
      ),
      desktop: Scaffold(
        appBar: myAppBarWidget(context, "Call for papers"),
        body: SingleChildScrollView(
          scrollDirection:Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SelectableText("Call for papers", style: style),
                SelectableText(
                  callForPapers,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SelectableText(
                    "This conference covers the following salient topics of interest but not limited to: ",
                    style: Theme.of(context).textTheme.bodyText1),
                SizedBox(
                  height: 20,
                ),
                CallForPapersWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
