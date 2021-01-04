import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:timelines/timelines.dart';

class SideTabWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool mobile = MediaQuery.of(context).size.width <= 600;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        ButtonTheme(
          minWidth: 200.0,
          padding: EdgeInsets.all(0),
          height: 60.0,
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(secondary: HexColor("#ff309071")),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: RaisedButton(
            onPressed: () {},
            child: Text(
              "Submit Paper",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: mobile ? 30 : 0),
        SizedBox(
          height: 360,
          child: DefaultTabController(
            length: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Card(
                child: Scaffold(
                  appBar: PreferredSize(
                    preferredSize: Size.fromHeight(50),
                    child: AppBar(
                      automaticallyImplyLeading: false,
                      flexibleSpace: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          new TabBar(tabs: [
                            Tab(
                              child: Text(
                                "Important Dates",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Notification",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ])
                        ],
                      ),
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          TimelineTile(
                            oppositeContents: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SelectableText('Feb 15, 2021'),
                            ),
                            contents: Card(
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                child: SelectableText('Submission Ends'),
                              ),
                            ),
                            node: TimelineNode(
                              indicator: Icon(
                                MdiIcons.calendarCheckOutline,
                                size: 30,
                              ),
                              endConnector: SolidLineConnector(
                                color: HexColor("#ff309071"),
                              ),
                            ),
                          ),
                          TimelineTile(
                            oppositeContents: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SelectableText('Feb 28, 2021'),
                            ),
                            contents: Card(
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                child:
                                    SelectableText('Acceptance Notification'),
                              ),
                            ),
                            node: TimelineNode(
                              indicator: Icon(
                                MdiIcons.accountCheckOutline,
                                size: 30,
                              ),
                              startConnector: SolidLineConnector(
                                color: HexColor("#ff309071"),
                              ),
                              endConnector: SolidLineConnector(
                                color: HexColor("#ff309071"),
                              ),
                            ),
                          ),
                          TimelineTile(
                            oppositeContents: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SelectableText('Mar 05, 2021'),
                            ),
                            contents: Card(
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                child: SelectableText(
                                    'Camera ready paper submission'),
                              ),
                            ),
                            node: TimelineNode(
                              indicator: Icon(
                                MdiIcons.cameraOutline,
                                size: 30,
                              ),
                              startConnector: SolidLineConnector(
                                color: HexColor("#ff309071"),
                              ),
                              endConnector: SolidLineConnector(
                                color: HexColor("#ff309071"),
                              ),
                            ),
                          ),
                          TimelineTile(
                            oppositeContents: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SelectableText('Mar 05, 2021'),
                            ),
                            contents: Card(
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                child: SelectableText('Registration'),
                              ),
                            ),
                            node: TimelineNode(
                              indicator: Icon(
                                MdiIcons.textBoxCheckOutline,
                                size: 30,
                              ),
                              startConnector: SolidLineConnector(
                                color: HexColor("#ff309071"),
                              ),
                              endConnector: SolidLineConnector(
                                color: HexColor("#ff309071"),
                              ),
                            ),
                          ),
                          TimelineTile(
                            oppositeContents: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SelectableText('Mar 18-19, 2021'),
                            ),
                            contents: Card(
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                child: SelectableText('Conference'),
                              ),
                            ),
                            node: TimelineNode(
                              indicator: Icon(
                                MdiIcons.accountGroupOutline,
                                size: 30,
                              ),
                              startConnector: SolidLineConnector(
                                color: HexColor("#ff309071"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Card(
                              child: ListTile(
                                contentPadding: EdgeInsets.all(10),
                                title: SelectableText(
                                  "Title",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                trailing: SelectableText(
                                  "Date",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                contentPadding: EdgeInsets.all(10),
                                title: SelectableText(
                                  "SelectableText",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                trailing: SelectableText(
                                  "Date",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                contentPadding: EdgeInsets.all(10),
                                title: SelectableText(
                                  "SelectableText",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                trailing: SelectableText(
                                  "Date",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                contentPadding: EdgeInsets.all(10),
                                title: SelectableText(
                                  "SelectableText",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                trailing: SelectableText(
                                  "Date",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                contentPadding: EdgeInsets.all(10),
                                title: SelectableText(
                                  "SelectableText",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                trailing: SelectableText(
                                  "Date",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
