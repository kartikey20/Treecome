import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/AboutConference.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/DrawerWidget.dart';
import 'package:treecome/widgets/Footer.dart';
import 'package:treecome/widgets/JournalPublicationWidget.dart';
import 'package:treecome/widgets/ProcedingsPublicationWidget.dart';
import 'package:treecome/widgets/SideTabWidget.dart';

class Home extends StatelessWidget {
  TextStyle style;

  Home(this.style);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawerWidget(),
      appBar: myAppBarWidget(context, "Treecome"),
      body: ScreenTypeLayout(
        mobile: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                AboutConference(style),
                SizedBox(height: 30,),
                SideTabWidget(),
                JournalPublicationsWidget(style),
                ProceedingPublicationsWidget(style)
              ],
            ),
          ),
        ),
        desktop: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 430,
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
                        child: AboutConference(style),
                      ),
                      GridPlacement(
                        rowStart: 0,
                        columnStart: 1,
                        child: SideTabWidget(),
                      )
                    ],
                  ),
                ),
                JournalPublicationsWidget(style),
                ProceedingPublicationsWidget(style),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
