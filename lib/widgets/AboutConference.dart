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
          Text('G B Pant Institute of Engineering & Technology (GBPIET), Pauri-Garhwal is proud to announce International Conference on "Technological Revolution in Electrical, Electronics and         Communication Engineering (TREECOME-2021)". This           conference is an initiative to provide a common platform for researchers working in the field of Electrical, Electronics and Communication Engineering to share knowledge and ideas of technological achievements. As  we all know that the revolution and advancement in the field of Electrical, Electronics and Communication Engineering provide excellent outcomes  for various potential applications. Therefore, it should be considered as the need of today to  assimilate various ideas of researcher working in the different domains to develop cost effective and reliable technology for day to day life. This conference will be suitable for renowned researchers, young scientists, engineers from academia and industry and other keen professionals. ',style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      );
    });
  }
}
