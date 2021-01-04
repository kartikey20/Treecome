import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CallForPapersWidget extends StatelessWidget {
  var title;
  List list;

  CallForPapersWidget(this.title, this.list);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 56,
            color: HexColor("#ff309071"),
            child: Text(title),
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                clipBehavior: Clip.antiAlias,
                child: ListTile(
                  title: Text(list[index]["title"]),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
