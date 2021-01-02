import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/AboutConferenceWidget.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/InvitedSpeakersWidget.dart';
import 'package:treecome/widgets/JournalPublicationWidget.dart';
import 'package:treecome/widgets/ProcedingsPublicationWidget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarWidget("title"),
      body: ScreenTypeLayout(
        mobile: ListView(
          shrinkWrap: true,
          children: [
            AboutConferenceWidget(0.7, 0.3, 1, 0, 1, 0),
            // params : (column1, column2, row1, row2, columnStart, rowStart)
/*            InvitedSpeakersWidget(Axis.horizontal, true, true, 0.8, 400),
            // params : (direction, autoPlay, infiniteScroll)
            ProceedingPublicationsWidget(Axis.horizontal, true),
            // params : (direction)
            JournalPublicationsWidget(Axis.horizontal, true),*/
            // params : (direction)
          ],
        ),
        desktop: ListView(
          shrinkWrap: true,
          children: [
            AboutConferenceWidget(0.7, 0.3, 1, 0, 1, 0),
            // params : (column1, column2, row1, row2, columnStart, rowStart)
/*            InvitedSpeakersWidget(Axis.horizontal, true, true, 0.8, 400),
            // params : (direction, autoPlay, infiniteScroll)
            ProceedingPublicationsWidget(Axis.horizontal, true),
            // params : (direction)
            JournalPublicationsWidget(Axis.horizontal, true),*/
            // params : (direction)
          ],
        ),
      ),
    );
  }
}
