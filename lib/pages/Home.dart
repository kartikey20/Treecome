import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/AboutConference.dart';
import 'package:treecome/widgets/InvitedSpeakers.dart';
import 'package:treecome/widgets/JournalPublication.dart';
import 'package:treecome/widgets/Procedings.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ListView(
        shrinkWrap: true,
        children: [
          AboutConference(1, 0, 1, 0, 2),  // params : (column1, column2, row1, row2, columnStart)
          InvitedSpeakers(Axis.vertical, false, false), // params : (direction, autoPlay, infiniteScroll)
          ProceedingPublications(Axis.vertical), // params : (direction)
          JournalPublications(Axis.vertical), // params : (direction)
        ],
      ),
      desktop: ListView(
        shrinkWrap: true,
        children: [
          AboutConference(0.7, 0.3, 1, 1, 2), // params : (column1, column2, row1, row2, columnStart)
          InvitedSpeakers(Axis.horizontal, true, true), // params : (direction, autoPlay, infiniteScroll)
          ProceedingPublications(Axis.horizontal), // params : (direction)
          JournalPublications(Axis.horizontal), // params : (direction)
        ],
      ),
    );
  }
}
