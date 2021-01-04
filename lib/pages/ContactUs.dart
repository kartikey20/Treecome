import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/ContactUsForm.dart';
import 'package:treecome/widgets/ContactUsList.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarWidget(context,"Contact Us"),
      body: ScreenTypeLayout(
        mobile: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            ContactUsForm(),
            ContactUsList(),
          ],
        ),
        desktop: SizedBox(
          height: 600,
          child: LayoutGrid(
            columnGap: 12,
            templateColumnSizes: [
              FlexibleTrackSize(0.5),
              FlexibleTrackSize(0.5),
            ],
            templateRowSizes: [
              FlexibleTrackSize(1),
            ],
            children: [
              GridPlacement(
                rowStart: 0,
                columnStart: 0,
                child: ContactUs(),
              ),
              VerticalDivider(),
              GridPlacement(
                rowStart: 0,
                columnStart: 0,
                child: ContactUsList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
