import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/widgets/AppBarWidget.dart';
import 'package:treecome/widgets/RegistrationTableWidget.dart';

class Registration extends StatelessWidget {
  TextStyle style;

  Registration(this.style);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarWidget(context, "Registration"),
      body: ScreenTypeLayout(
        mobile: SingleChildScrollView(),
        desktop: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SelectableText(
                "Registration",
                style: style,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
