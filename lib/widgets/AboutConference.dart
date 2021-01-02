import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/SideTab.dart';

class AboutConference extends StatelessWidget {
  var size, box;

  AboutConference(this.size, this.box);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SelectableText(
                "About Conference",
                style: TextStyle(
                  fontSize: size,
                ),
              ),
              SizedBox(
                height: box,
              ),
              SelectableText(
                  "Govind Ballah Pant Institute of Engineering & Technology, Pauri Garhwal is proud to announce the International Conference on Technological Revolution in Electrical, Electronics & Communication Engineering. The conference is scheduled for 26 - 27 June 2021. This conference will provide an excellent platform to the researchers for presenting their research work and to get acquainted with recent research trends in technology development. The conference will have separate tracks covering recent and hot research topics in Electrical Engineering, Electronics Engineering, Computer Engineering, and Applied Science. Computation has become a part of our daily life. From finding friends online to solutions for climate change and sustainable developments to curing autoimmune diseases, large scale computation has found various applications in different fields. There is a huge demand for data-intensive large-scale computation which will provide reliable, economical, and user-friendly products. Keeping these in mind, the conference will be devoted to advancements in contemporary computing and applications. Researchers from all over the country and abroad will gather to introduce recent advances in the field. The conference will be a successive catalyst in promoting research work, sharing views, and innovative ideas in the field")
            ],
          ),
          SideTab()
        ],
      ),
      desktop: Container(
        height: 500,
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
                    style: TextStyle(
                      fontSize: size,
                    ),
                  ),
                  SizedBox(
                    height: box,
                  ),
                  SelectableText(
                      "Govind Ballah Pant Institute of Engineering & Technology, Pauri Garhwal is proud to announce the International Conference on Technological Revolution in Electrical, Electronics & Communication Engineering. The conference is scheduled for 26 - 27 June 2021. This conference will provide an excellent platform to the researchers for presenting their research work and to get acquainted with recent research trends in technology development. The conference will have separate tracks covering recent and hot research topics in Electrical Engineering, Electronics Engineering, Computer Engineering, and Applied Science. Computation has become a part of our daily life. From finding friends online to solutions for climate change and sustainable developments to curing autoimmune diseases, large scale computation has found various applications in different fields. There is a huge demand for data-intensive large-scale computation which will provide reliable, economical, and user-friendly products. Keeping these in mind, the conference will be devoted to advancements in contemporary computing and applications. Researchers from all over the country and abroad will gather to introduce recent advances in the field. The conference will be a successive catalyst in promoting research work, sharing views, and innovative ideas in the field",style: TextStyle(height: 2,color: HexColor("#696E83")),)
                ],
              ),
            ),
            GridPlacement(rowStart: 0, columnStart: 1, child: SideTab())
          ],
        ),
      ),
    );
  }
}
