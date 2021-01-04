import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/Data/data.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/CallForPapersWidget.dart';
import 'package:treecome/widgets/DrawerWidget.dart';

class CallForPapers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarWidget(context,"Call for Papers"),
      body: ScreenTypeLayout(
        mobile: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Text(
              callForPapers,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            CallForPapersWidget("Track 1", track1),
            CallForPapersWidget("Track 2", track2),
            CallForPapersWidget("Track 3", track2),
          ],
        ),
        desktop: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Text("Call for Papers",
                style: Theme.of(context).textTheme.headline1),
            Text(
              callForPapers,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            CallForPapersWidget("Track 1", track1),
            CallForPapersWidget("Track 2", track2),
            CallForPapersWidget("Track 3", track2),
          ],
        ),
      ),
    );
  }
}
