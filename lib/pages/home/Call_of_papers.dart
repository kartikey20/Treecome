import 'package:flutter/material.dart';
import 'package:treecome/private_variables.dart';

class Call_for_papers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("Call for Paper", style: TextStyle(fontSize: 50),),
            SizedBox(height: 10,),
            Text(call_for_papers, style: TextStyle(fontSize: 16, height: 2.0)),
          ],
        ),
      ),
    );
  }
}
