import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/Data/data.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/CommitteeList.dart';

class Committee extends StatelessWidget {
  TextStyle style;

  Committee(this.style);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarWidget(context, "Committee"),
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
                CommitteeList("Patron", patron),
                CommitteeList("General Chair", general),
                CommitteeList("Conference Chair", conference),
                CommitteeList("Technical Chair", technical),
                CommitteeList("Finance Committee", finance),
                CommitteeList("Organizing Secretaries", organizing),
                CommitteeList("Advisory Committee", advisory),
                CommitteeList("Technical Program Committee", technicalprogram),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  "Committee",
                  style: style,
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
                          CommitteeList("Patron", patron),
                          CommitteeList("General Chair", general),
                          CommitteeList("Conference Chair", conference),
                          CommitteeList("Technical Chair", technical),
                          CommitteeList("Finance Committee", finance),
                          CommitteeList("Organizing Secretaries", organizing),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      flex: 1,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          CommitteeList("Advisory Committee", advisory),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Expanded(
                      flex: 1,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          CommitteeList(
                              "Technical Program Committee", technicalprogram),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
