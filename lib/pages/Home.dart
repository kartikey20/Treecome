import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/AboutConferenceWidget.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/DrawerWidget.dart';
import 'package:treecome/widgets/InvitedSpeakersWidget.dart';
import 'package:treecome/widgets/JournalPublicationWidget.dart';
import 'package:treecome/widgets/ProcedingsPublicationWidget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Scaffold(
        drawer: MyDrawer(),
        appBar: myAppBar("Treecome"),
        body: ListView(
          shrinkWrap: true,
          children: [
            AboutConference(1, 0, 1, 1, 0, 1),
            // params : (column1, column2, row1, row2, columnStart, rowStart)
            InvitedSpeakers(Axis.vertical, false, false, 0.2, 400),
            // params : (direction, autoPlay, infiniteScroll, viewportFraction, height)
            ProceedingPublications(Axis.vertical),
            // params : (direction)
            JournalPublications(Axis.vertical),
            // params : (direction)
          ],
        ),
      ),
      desktop: Scaffold(
        body: ListView(
          shrinkWrap: true,
          children: [
            AboutConference(0.7, 0.3, 1, 0, 1, 0),
            // params : (column1, column2, row1, row2, columnStart, rowStart)
            InvitedSpeakers(Axis.horizontal, true, true, 0.8, 400),
            // params : (direction, autoPlay, infiniteScroll)
            ProceedingPublications(Axis.horizontal),
            // params : (direction)
            JournalPublications(Axis.horizontal),
            // params : (direction)
          ],
        ),
      ),
    );
  }
}
