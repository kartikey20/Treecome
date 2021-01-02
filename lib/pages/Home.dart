import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/AboutConference.dart';
import 'package:treecome/widgets/InvitedSpeakers.dart';
import 'package:treecome/widgets/JournalPublication.dart';
import 'package:treecome/widgets/Procedings.dart';
import 'package:treecome/widgets/SideTab.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ListView(
        children: [
          AboutConference(20, 10),
          InvitedSpeakers(20),
          SelectableText("data"),
          SelectableText("Proceedings"),
          ProceedingPublications(20,10),
          SelectableText("Journal Publications"),
          JournalPublications(20,10),
        ],
      ),
      desktop: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: AboutConference(40, 20),
          ),
          SizedBox(
            height: 20,
          ),
          InvitedSpeakers(40),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ProceedingPublications(40, 20),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: JournalPublications(40, 20),
          ),
        ],
      ),
    );
  }
}
