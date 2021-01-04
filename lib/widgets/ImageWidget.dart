import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Image(
          fit: BoxFit.fill,
          image: NetworkImage("https://dummyimage.com/250"),
        ),
      ),
    );
  }
}
