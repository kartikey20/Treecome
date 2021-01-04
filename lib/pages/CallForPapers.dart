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
          ],
        ),
      ),
    );
  }
}
