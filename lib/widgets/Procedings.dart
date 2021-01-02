import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProceedingPublications extends StatelessWidget {
  var size, box;

  ProceedingPublications(this.size, this.box);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          "Proceeding Publication",
          style: TextStyle(fontSize: size),
        ),
        SizedBox(
          height: box,
        ),
        SelectableText(
          "The Conference Proceedings will be published in CRC Press/ Balkema, Taylor & Francis Group, submitted for indexing by Clarivate Analytics (Formerly known as Thomson Reuters/ISI), Web of Knowledge, SciVerse, SCOPUS, EI Compendex, Google Scholar and many others.",
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
          ],
        )
      ],
    );
  }
}
