import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/Data/data.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/CallForPapersWidget.dart';
import 'package:treecome/widgets/DrawerWidget.dart';

class CallForPapers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Scaffold(
        drawer: MyDrawerWidget(),
        appBar: myAppBarWidget(context, "Call for papers"),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Text(
                callForPapers,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
      desktop: Scaffold(
        appBar: myAppBarWidget(context, "Call for papers"),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Text("Call for Papers",
                style: Theme.of(context).textTheme.headline1),
            Text(
              callForPapers,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 20,),
            Text(
                "This conference covers the following salient topics of interest but not limited to: ",
                style: Theme.of(context).textTheme.bodyText1),
            SizedBox(height: 20,),

            Card(
              child: ListTile(
                title: Text(" Track 1 : Power Electronics & Drives ",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(" Track 2: Renewable energy ",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(" Track 3: Instrumentation & Control  ",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Track 4 : Power systems ",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                    " Track 5 : Solid state devices, VLSI and electronic circuits ",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(" Track 6 :Antenna, Microwave and Communication ",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(" Track 7: Signal & image processing ",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                    " Track 8 :Artificial Intelligence , Machine learning, IoT, Embedded etc. ",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
