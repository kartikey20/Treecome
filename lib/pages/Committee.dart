import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/Data/data.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/CommitteeList.dart';
import 'package:treecome/widgets/DrawerWidget.dart';

class Committee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Scaffold(
        drawer: MyDrawerWidget(),
        appBar: myAppBarWidget(context, "Committee"),
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Committee()
            CommitteeList("General", general),
            CommitteeList("Advisory", advisory),
            CommitteeList("Organizing", organizing),

            CommitteeList("conference", conference),
            CommitteeList("finance", finance),
            CommitteeList("technical", technical),
          ],
        ),
      ),
      desktop: Scaffold(
        appBar: myAppBarWidget(context, "Committee"),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Text(
                "Committee",
                style: Theme
                    .of(context)
                    .textTheme
                    .headline1,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    flex: 1,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        CommitteeList("general", general),
                        CommitteeList("Conference", conference),
                        CommitteeList("technical", technical),
                        CommitteeList("Finance", finance),
                        CommitteeList("Organizing Secretaries", organizing)
                      ],
                    ),
                  ),
                  SizedBox(width: 30,),
                  Expanded(
                    flex: 1,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        CommitteeList("Advisory", advisory),
                      ],
                    ),
                  ),
                  SizedBox(width: 30,),
                  Expanded(
                    flex: 1,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
