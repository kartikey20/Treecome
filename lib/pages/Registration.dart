import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(alignment: Alignment.topLeft,child: Text("Registration",style: TextStyle(fontSize: 40,height: 2),)),
            ),
            SizedBox(
              height: 20,
            ),
            Table(
              defaultColumnWidth: FixedColumnWidth(300.0),
              border: TableBorder.all(
                  color: Colors.white, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(
                  decoration: BoxDecoration(color: HexColor("#ff309071")),
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Registration Type",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Category",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Fee",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                          child: Text("Delegates From Industry"),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Indian"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Foreigner"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("₹ 2000"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("\$ 100"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                          child: Text("Delegates From Academics"),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Indian"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Foreigner"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("₹ 1500"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("\$ 75"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                      child: Column(
                        children: [
                          Text("Full Time Students"),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Indian"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Foreigner"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("₹ 1000"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("\$ 50"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          Text("Attendee Only"),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Indian"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Foreigner"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("₹ 750"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("\$ 25"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
