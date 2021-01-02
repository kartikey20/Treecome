import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_builder/responsive_builder.dart';

class InvitedSpeakers extends StatelessWidget {
  var size;

  InvitedSpeakers(this.size);

  @override
  Widget build(BuildContext context) {
    bool mobile = MediaQuery.of(context).size.width <= 600;
    final List<String> imgList = [
      "https://dummyimage.com/${mobile ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.15}",
      "https://dummyimage.com/${mobile ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.15}",
      "https://dummyimage.com/${mobile ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.15}",
      "https://dummyimage.com/${mobile ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.15}",
      "https://dummyimage.com/${mobile ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.15}",
      "https://dummyimage.com/${mobile ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.15}",
      "https://dummyimage.com/${mobile ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.15}",
      "https://dummyimage.com/${mobile ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.15}",
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(

              width: MediaQuery.of(context).size.width * 0.15,
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Card(
                      elevation: 0,
                      child: Column(
                        children: [
                          Image(
                            image: NetworkImage(item),
                            fit: BoxFit.fill,
                          ),
                          Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Name",
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "designation",
                                  style: TextStyle(color: HexColor("#696E83")),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "location",
                                  style: TextStyle(
                                    color: HexColor("696E83"),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))
        .toList();
    return ScreenTypeLayout(
      desktop: Container(
        decoration: BoxDecoration(
            color: HexColor("#D3FFDB"),
            borderRadius: BorderRadius.circular(50)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 50),
          child: Column(
            children: <Widget>[
              Text(
                "Invited Speakers",
                style: TextStyle(
                    fontSize: size,
                    color: HexColor("#696E83"),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 70,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.width * 0.22,
                  viewportFraction: 0.17,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: false,
                  scrollDirection: Axis.horizontal,
                ),
                items: imageSliders,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
