import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/Data/data.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/CommitteeList.dart';

class Committee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarWidget(context,"Committee"),
      body: ScreenTypeLayout(
        mobile: ListView(
          shrinkWrap: true,
          children: [
            CommitteeList("Advisory", advisory),
            CommitteeList("Organizing", organizing),
            CommitteeList("General", general),
            CommitteeList("conference", conference),
            CommitteeList("finance", finance),
            CommitteeList("technical", technical),
          ],
        ),
        desktop: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Text(
              "Committee",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 1000,
              child: LayoutGrid(
                columnGap: 12,
                templateColumnSizes: [
                  FlexibleTrackSize(0.3),
                  FlexibleTrackSize(0.3),
                  FlexibleTrackSize(0.3),
                ],
                templateRowSizes: [
                  FlexibleTrackSize(1),
                ],
                children: [
                  GridPlacement(
                    rowStart: 0,
                    columnStart: 0,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        CommitteeList("Advisory", advisory),
                        CommitteeList("general", general),
                      ],
                    ),
                  ),
                  GridPlacement(
                    rowStart: 0,
                    columnStart: 1,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        CommitteeList("Organizing", organizing),
                        CommitteeList("finance", finance)
                      ],
                    ),
                  ),
                  GridPlacement(
                    rowStart: 0,
                    columnStart: 2,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        CommitteeList("technical", technical),
                        CommitteeList("general", general),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
