import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/ContactUsCard.dart';
import 'package:treecome/widgets/ContactUsForm.dart';

class ContactUs extends StatelessWidget {
  TextStyle style;

  ContactUs(this.style);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarWidget(context, "Contact Us"),
      body: ScreenTypeLayout(
        mobile: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Column(
                    children: [
                      Text(
                        "Drop us a message",
                        style: style,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ContactUsForm(),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Email directly to:",
                      style: style,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ContactUsCard("Mr. Puskhar Praveen", "puskhar@treecome.in",
                        "8448071122"),
                    ContactUsCard(
                        "Dr. Bhola Jha", "bholajha@treecome.in", "8448071122"),
                  ],
                )
              ],
            ),
          ),
        ),
        desktop: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SelectableText(
                  "Contact Us",
                  style: style,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text(
                              "Drop us a message",
                              style: style,
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(100, 0, 100, 0),
                              child: ContactUsForm(),
                            ),
                          ],
                        )),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Email directly to:",
                              style: style,
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            ContactUsCard("Mr. Puskhar Praveen",
                                "puskhar@treecome.in", "8448071122"),
                            ContactUsCard("Dr. Bhola Jha",
                                "bholajha@treecome.in", "8448071122"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
