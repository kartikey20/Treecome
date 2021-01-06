import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          fit: BoxFit.fill,
          image: 'https://dummyimage.com/250',
        ),
      ),
    );
  }
}
