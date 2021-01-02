import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/CallForPapersWidget.dart';
import 'package:treecome/widgets/DrawerWidget.dart';

class CallForPapers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Scaffold(
        drawer: MyDrawerWidget(),
        appBar: myAppBarWidget("Call For Papers"),
        body: CallForPapersWidget(false),
      ),
      desktop: Scaffold(
        appBar: myAppBarWidget("Call for Papers"),
        body: CallForPapersWidget(true),
      ),
    );
  }
}
