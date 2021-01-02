import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/SideTabWidget.dart';
import 'AboutConference.dart';

class ConferenceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            AboutConference(),
            SizedBox(height: 20,),
            SideTabWidget(),
          ],
        ),
      ),
      desktop: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          height: 460,
          child: LayoutGrid(
            columnGap: 30,
            templateColumnSizes: [
              FlexibleTrackSize(0.7),
              FlexibleTrackSize(0.3),
            ],
            templateRowSizes: [
              FlexibleTrackSize(1),
            ],
            children: [
              GridPlacement(
                rowStart: 0,
                columnStart: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SelectableText(
                      "About Conference",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    SelectableText(
                      "Govind Ballah Pant Institute of Engineering & Technology, Pauri Garhwal is proud to announce the International Conference on Technological Revolution in Electrical, Electronics & Communication Engineering. The conference is scheduled for 26 - 27 June 2021. This conference will provide an excellent platform to the researchers for presenting their research work and to get acquainted with recent research trends in technology development. The conference will have separate tracks covering recent and hot research topics in Electrical Engineering, Electronics Engineering, Computer Engineering, and Applied Science. Computation has become a part of our daily life. From finding friends online to solutions for climate change and sustainable developments to curing autoimmune diseases, large scale computation has found various applications in different fields. There is a huge demand for data-intensive large-scale computation which will provide reliable, economical, and user-friendly products. Keeping these in mind, the conference will be devoted to advancements in contemporary computing and applications. Researchers from all over the country and abroad will gather to introduce recent advances in the field. The conference will be a successive catalyst in promoting research work, sharing views, and innovative ideas in the field",
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
              ),
              GridPlacement(rowStart: 0, columnStart: 1, child: SideTabWidget())
            ],
          ),
        ),
      ),
    );
  }
}
