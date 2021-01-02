import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:timelines/timelines.dart';

class SideTabWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: DefaultTabController(
        length: 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Card(
            color: Colors.black,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: AppBar(
                  flexibleSpace: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      new TabBar(tabs: [
                        Tab(
                          child: Text("Important Dates"),
                        ),
                        Tab(
                          child: Text("Notification"),
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
                          child: Text('Feb 15, 2021'),
                        ),
                        contents: Card(
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Submission Ends'),
                          ),
                        ),
                        node: TimelineNode(
                          indicator: Icon(
                            MdiIcons.calendarCheckOutline,
                            size: 30,
                          ),
                          endConnector: SolidLineConnector(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      TimelineTile(
                        oppositeContents: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('Feb 28, 2021'),
                        ),
                        contents: Card(
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                                'Acceptance Notification'),
                          ),
                        ),
                        node: TimelineNode(
                          indicator: Icon(
                            MdiIcons.accountCheckOutline,
                            size: 30,
                          ),
                          startConnector: SolidLineConnector(
                            color: Colors.green,
                          ),
                          endConnector: SolidLineConnector(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      TimelineTile(
                        oppositeContents: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('Mar 05, 2021'),
                        ),
                        contents: Card(
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                                'Camera ready paper submission'),
                          ),
                        ),
                        node: TimelineNode(
                          indicator: Icon(
                            MdiIcons.cameraEnhanceOutline,
                            size: 30,
                          ),
                          startConnector: SolidLineConnector(
                            color: Colors.green,
                          ),
                          endConnector: SolidLineConnector(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      TimelineTile(
                        oppositeContents: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('Mar 05, 2021'),
                        ),
                        contents: Card(
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Registration'),
                          ),
                        ),
                        node: TimelineNode(
                          indicator: Icon(
                            MdiIcons.textBoxCheckOutline,
                            size: 30,
                          ),
                          startConnector: SolidLineConnector(
                            color: Colors.green,
                          ),
                          endConnector: SolidLineConnector(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      TimelineTile(
                        oppositeContents: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('Mar 18-19, 2021'),
                        ),
                        contents: Card(
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Conference'),
                          ),
                        ),
                        node: TimelineNode(
                          indicator: Icon(
                            MdiIcons.accountGroupOutline,
                            size: 30,
                          ),
                          startConnector: SolidLineConnector(
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            Text(""),
                            Text(""),
                          ],
                        ),
                        Row(
                          children: [
                            Text(""),
                            Text(""),
                          ],
                        ),
                        Row(
                          children: [
                            Text(""),
                            Text(""),
                          ],
                        ),
                        Row(
                          children: [
                            Text(""),
                            Text(""),
                          ],
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
    );
  }
}
