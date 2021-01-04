import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AboutConference extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: FirebaseFirestore.instance.collection("conference").snapshots(),builder: (BuildContext context, AsyncSnapshot<QuerySnapshot>snapshot){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Conference",
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            "Govind Ballah Pant Institute of Engineering & Technology, Pauri Garhwal is proud to announce the International Conference on Technological Revolution in Electrical, Electronics & Communication Engineering. The conference is scheduled for 18 - 19 March, 2021. This conference will provide an excellent platform to the researchers for presenting their research work and to get acquainted with recent research trends in technology development. The conference will have separate tracks covering recent and hot research topics in Electrical Engineering, Electronics Engineering. Computation has become a part of our daily life. From finding friends online to solutions for climate change and sustainable developments to curing autoimmune diseases, large scale computation has found various applications in different fields. There is a huge demand for data-intensive large-scale computation which will provide reliable, economical, and user-friendly products. Keeping these in mind, the conference will be devoted to advancements in contemporary computing and applications. Researchers from all over the country and abroad will gather to introduce recent advances in the field. The conference will be a successive catalyst in promoting research work, sharing views, and innovative ideas in the field.",
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      );
    });
  }
}
