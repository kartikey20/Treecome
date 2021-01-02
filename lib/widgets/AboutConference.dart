import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:treecome/widgets/SideTab.dart';

class AboutConference extends StatelessWidget {
  var column1, column2, row1, row2, columnStart;

  AboutConference(
      this.column1, this.column2, this.row1, this.row2, this.columnStart);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutGrid(
        columnGap: 30,
        templateColumnSizes: [
          FlexibleTrackSize(column1),
          FlexibleTrackSize(column2),
        ],
        templateRowSizes: [
          FlexibleTrackSize(row1),
          FlexibleTrackSize(row2),
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
                ),
              ],
            ),
          ),
          GridPlacement(rowStart: 0, columnStart: columnStart, child: SideTab())
        ],
      ),
    );
  }
}
