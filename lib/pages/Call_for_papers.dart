import 'package:flutter/material.dart';

class Call_for_papers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30,0,30,0),
            child: Align(alignment: Alignment.topLeft,child: Text("Call for Paper",style: TextStyle(fontSize: 40,height: 2),)),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text("Prospective authors are invited to submit original manuscripts (unpublished/not communicated/not under review of any other conference or journal) of their research work on recent developments in the topics related to the conference. It is required that the manuscript follows the standard camera-ready format for which the template is provided on the conference website. All submitted papers will be peer reviewed and evaluated based on originality, technical strength, scientific contribution, relevance to conference theme, and readability. Acceptance notification of papers will be communicated to authors by email. The authors of the accepted papers will be allowed to make corrections in accordance with the suggestions and comments of the reviewers and final cameraready papers must be submitted within the final submission deadline. ",style: TextStyle(height: 2,fontSize: 16),),
          )
        ],
      ),
    );
  }
}
