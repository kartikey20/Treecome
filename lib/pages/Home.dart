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
    return ScreenTypeLayout(
      mobile: Scaffold(
        drawer: MyDrawerWidget(),
        appBar: myAppBarWidget(context, "Treecome"),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              AboutConference(),
              SizedBox(
                height: 20,
              ),
              SideTabWidget(),
              JournalPublicationsWidget(),
              ProceedingPublicationsWidget(),
            ],
          ),
        ),
      ),
      desktop: Scaffold(
        appBar: myAppBarWidget(context, "Treecome"),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 450,
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
              JournalPublicationsWidget(),
              ProceedingPublicationsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
