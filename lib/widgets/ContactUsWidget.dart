import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class ContactUsWidget extends StatelessWidget {
  var column1, column2, row1, row2, columnStart, rowStart;
  bool visible;

  ContactUsWidget(this.column1, this.column2, this.row1, this.row2,
      this.columnStart, this.rowStart, this.visible);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: visible,
          child: Text(
            "Contact Us",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        LayoutGrid(
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
              columnStart: 0,
              rowStart: 0,
              child: Text(""),
            ),
            GridPlacement(
              columnStart: columnStart,
              rowStart: rowStart,
              child: Text(""),
            ),
          ],
        ),
      ],
    );
  }
}
