import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:hexcolor/hexcolor.dart';

class ContactUsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        Card(
          child: ListTile(
            title: Center(
              child: Text(
                "Dr. Bhola Jha",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            subtitle: Column(
              children: [
                Text("Associate Professor",
                    style: Theme.of(context).textTheme.bodyText1),
                Text("8868094802", style: Theme.of(context).textTheme.bodyText1)
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            title: Center(
              child: Text(
                "Mr Puskhar Praveeen",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            subtitle: Column(
              children: [
                Text("Assitant Professor",
                    style: Theme.of(context).textTheme.bodyText1),
                Text("8527069548", style: Theme.of(context).textTheme.bodyText1)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
