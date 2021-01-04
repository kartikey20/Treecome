import 'package:flutter/material.dart';
import 'package:treecome/Data/data.dart';

class CommitteeList extends StatelessWidget {
  String title;
  List list;

  CommitteeList(this.title, this.list);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
     children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              child: ListTile(
                contentPadding: EdgeInsets.all(10.0),
                title: Text(
                  list[index]["name"],
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      list[index]["designation"],
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
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
    );
  }
}
