import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:treecome/Data/data.dart';

class CommitteeList extends StatelessWidget {
  String title;
  List list;

  CommitteeList(this.title, this.list);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            title,
            style: TextStyle(fontSize: 30,color: HexColor("#696E83"),height: 2),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Card(
                clipBehavior: Clip.antiAlias,
                child: ListTile(
                  contentPadding: EdgeInsets.all(10.0),
                  title: Center(
                    child: SelectableText(
                      list[index]["name"],
                      style: TextStyle(
                          fontSize: 18, color: Colors.black, height: 2),
                    ),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SelectableText(
                        list[index]["designation"],
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SelectableText(
                        list[index]["location"],
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
