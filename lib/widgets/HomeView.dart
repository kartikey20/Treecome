import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:firebase/firebase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'AboutConference.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SingleChildScrollView(
        child: ListView(
          children: [
            Text("About Conference"),
            Text("fksdkfksd"),
            Text("kartikey ra")

          ],
        ),
      ),
      desktop: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: Container(
                height: 400,
                child: LayoutGrid(
                  rowGap: 12,
                  columnGap: 12,
                  templateColumnSizes: [
                    FlexibleTrackSize(0.7),
                    FlexibleTrackSize(0.3),
                  ],
                  templateRowSizes: [
                    FlexibleTrackSize(100),
                    FlexibleTrackSize(500),
                  ],
                  children: [
                    GridPlacement(
                        columnStart: 0,
                        rowStart: 0,
                        child: Text(
                          "About Conference",
                          style: TextStyle(fontSize: 50),
                        ),),
                    GridPlacement(
                      columnStart: 0,
                      rowStart: 1,
                      child: AboutConference(),
                    ),
                    GridPlacement(
                      columnStart: 1,
                      rowStart: 0,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: RaisedButton(
                                color: HexColor("#21CE99"),
                                onPressed: () {},
                                child: Text(
                                  "Submit Paper",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              )),
                        ),
                      ),
                    ),
                    GridPlacement(
                      columnStart: 1,
                      rowStart: 1,
                      child: Center(child: Text("")),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
