import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class JournalPublications extends StatelessWidget {
  var size, box;

  JournalPublications(this.size, this.box);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          "Journal Publications",
          style: TextStyle(fontSize: size),
        ),
        SizedBox(
          height: box,
        ),
        SelectableText(
          "The extended version of selected papers will be recommended to publish with the following journals which are indexed in Web of Science, Scopus, DBLP, ACM, and many more.",
          style: TextStyle(color: HexColor("#696E83"),height: 2),
        ),
        SizedBox(
          height: box,
        ),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Card(
                elevation: 0,
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://dummyimage.com/300"),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Card(
                elevation: 0,
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://dummyimage.com/300"),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Card(
                elevation: 0,
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://dummyimage.com/300"),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Card(
                elevation: 0,
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://dummyimage.com/300"),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
