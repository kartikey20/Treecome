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
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(2),
            labelText: 'Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(2),
            labelText: 'Email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        TextFormField(
          maxLines: 8,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(2),
            labelText: 'Message',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        ButtonTheme(
          minWidth: 150.0,
          height: 40.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: RaisedButton(
            onPressed: () {},
            child: Text(
              "Submit Paper",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
