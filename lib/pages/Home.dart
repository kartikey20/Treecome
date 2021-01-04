import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/AboutConference.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/DrawerWidget.dart';
import 'package:treecome/widgets/InvitedSpeakersWidget.dart';
import 'package:treecome/widgets/JournalPublicationWidget.dart';
import 'package:treecome/widgets/ProcedingsPublicationWidget.dart';
import 'package:treecome/widgets/SideTabWidget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool mobile = MediaQuery.of(context).size.width <= 600;
    return Scaffold(
      drawer: MyDrawerWidget(),
      appBar: myAppBarWidget(context, "Treecome"),
      body: ScreenTypeLayout(
        mobile: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            AboutConference(),
            SideTabWidget(),
            InvitedSpeakersWidget(),
            JournalPublicationsWidget(),
            ProceedingPublicationsWidget(),
          ],
        ),
        desktop: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 400,
              child: LayoutGrid(
                columnGap: 12,
                templateColumnSizes: [
                  FlexibleTrackSize(0.7),
                  FlexibleTrackSize(0.3),
                ],
                templateRowSizes: [
                  FlexibleTrackSize(1),
                ],
                children: [
                  GridPlacement(
                    rowStart: 0,
                    columnStart: 0,
                    child: AboutConference(),
                  ),
                  GridPlacement(
                    rowStart: 0,
                    columnStart: 1,
                    child: SideTabWidget(),
                  ),
                ],
              ),
            ),
            InvitedSpeakersWidget(),
            JournalPublicationsWidget(),
            ProceedingPublicationsWidget(),
          ],
        ),
      ),
    );
  }
}
