import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:treecome/Data/data.dart';

class CallForPapersWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: Tracks.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                clipBehavior: Clip.antiAlias,
                child: ListTile(
                  title: Text(Tracks[index]),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
