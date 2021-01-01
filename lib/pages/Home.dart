import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:timelines/timelines.dart';

class Bullet extends Text {
  const Bullet(
    String data, {
    Key key,
    TextStyle style,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
  }) : super(
          '• ${data}',
          key: key,
          style: style,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
        );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool mobile = MediaQuery.of(context).size.width <= 600;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: FittedBox(
                child: Image.network(
                  'https://i.ibb.co/ScGtYH9/photo-slide1.jpg',
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                    flex: mobile ? 1 : 2,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "About Conference",
                              style: TextStyle(
                                height: mobile ? 1 : 2,
                                fontSize: mobile ? 20 : 40,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: mobile ? 10 : 20,
                          ),
                          Text(
                            "G B Pant Institute of Engineering & Technology (GBPIET), PauriGarhwal is proud to announce International Conference on 'Technological Revolution in Electrical, Electronics and Communication Engineering (TREECOME-2021)'. This conference is an initiative to provide a common platform for researchers working in the field of Electrical, Electronics and Communication Engineering to share knowledge and ideas of technological achievements. As we all know that the revolution and advancement in the field of Electrical, Electronics and Communication Engineering provide excellent outcomes for various potential applications. Therefore, it should be considered as the need of today to assimilate various ideas of researcher working in the different domains to develop cost effective and reliable technology for day to day life. This conference will be suitable for renowned researchers, young scientists, engineers from academia and industry and other keen professionals",
                            style: TextStyle(height: 2),
                          )
                        ],
                      ),
                    )),
                Expanded(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 20, 30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25.0),
                        child: Container(
                          height: 400,
                          child: DefaultTabController(
                            length: 2,
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
                                            child: Text("Important Dates"),
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
                                            child: Text('Feb 15, 2021'),
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
                                            child: Text('Mar 05, 2021'),
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
                                            startConnector: DashedLineConnector(
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
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "About Institute",
                    style: TextStyle(
                      height: mobile ? 1 : 2,
                      fontSize: mobile ? 20 : 40,
                    ),
                  ),
                ),
                SizedBox(
                  height: mobile ? 10 : 20,
                ),
                Text(
                  "G B Pant Institute of Engineering and Technology (formally G B Pant Engineering College), Pauri-Garhwal (Uttarakhand) was established in 1989 with a vision to serve and lead society by imparting quality and value-based education. It is an autonomous institute of government of Uttarakhand and is affiliated to Uttarakhand Technical University, Dehradun. The institute is located in a serene hill terrain of the Himalayas in Pauri district. The institute offers 8 undergraduate, 8 postgraduate programs with research programs in various disciplines of engineering and technology",
                  style: TextStyle(height: 2),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 20, 0, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Conference Theme",
                    style: TextStyle(
                      height: mobile ? 1 : 2,
                      fontSize: mobile ? 20 : 40,
                    ),
                  ),
                ),
                SizedBox(
                  height: mobile ? 10 : 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "This conference covers the following salient topics of interest but not limited to: ",
                        style: TextStyle(height: 2),
                      ),
                      Bullet(
                        "Power Electronics & Drives",
                        style: TextStyle(height: 2),
                      ),
                      Bullet(
                        "Renewable energy ",
                        style: TextStyle(height: 2),
                      ),
                      Bullet(
                        "Instrumentation & Control ",
                        style: TextStyle(height: 2),
                      ),
                      Bullet(
                        "Power systems ",
                        style: TextStyle(height: 2),
                      ),
                      Bullet(
                        "Solid state devices, VLSI and electronic circuits",
                        style: TextStyle(height: 2),
                      ),
                      Bullet(
                        "Signal & image processing ",
                        style: TextStyle(height: 2),
                      ),
                      Bullet(
                        "Artificial Intelligence , Machine learning, IoT, Embedded etc.",
                        style: TextStyle(height: 2),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
