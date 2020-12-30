import 'package:charcode/html_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:treecome/widgets/HomeView.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';
import 'package:supercharged/supercharged.dart';

import 'Call_of_papers.dart';
import 'Committee.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _launchURL() async {
      const url = 'https://www.linkedin.com/in/kartikey-ranjan-750164104';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
    return ScreenTypeLayout(
      mobile: Scaffold(
        drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                title: Text("Home"),
                onTap: () {
                  Home();
                },
              )
              ],
            )
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Treecome"),
          leading: Icon(Icons.chat),
        ),
        body: Home(),
      ),
      desktop: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            leading: SvgPicture.asset(
              'images/logo.png',
              semanticsLabel: 'A shark?!',
            ),
            title: Text('Treecome'),
            actions: [
              SizedBox(
                width: 800,
                child: TabBar(tabs: [
                  Tab(
                    child: Text(
                      "Home",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Committee",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Call for Papers",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Registration",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Contact us",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ]),
              )
            ],
          ),
          bottomNavigationBar: SizedBox(
            height: 50,
            child: Container(
              color: HexColor("#309071"),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\u00a9 Treecome 2021',
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Text('|', style: TextStyle(color: Colors.white)),
                  ),
                  Row(
                    children: [
                      Text("Made with", style: TextStyle(color: Colors.white)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Text(
                          '${String.fromCharCode($hearts)}',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Text("by", style: TextStyle(color: Colors.white)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5,0,5,0),
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: _launchURL,
                            child: Text("Kartikey",style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              HomeView(),
              Committee(),
              Call_for_papers(),
              FancyBackgroundApp(),
              FancyBackgroundApp(),
            ],
          ),
        ),
      ),
    );
  }
}
class FancyBackgroundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(child: AnimatedBackground()),
        onBottom(AnimatedWave(
          height: 180,
          speed: 1.0,
        )),
        onBottom(AnimatedWave(
          height: 120,
          speed: 0.9,
          offset: pi,
        )),
        onBottom(AnimatedWave(
          height: 220,
          speed: 1.2,
          offset: pi / 2,
        )),
        Positioned.fill(child: CenteredText()),
      ],
    );
  }

  Widget onBottom(Widget child) => Positioned.fill(
    child: Align(
      alignment: Alignment.bottomCenter,
      child: child,
    ),
  );
}

class AnimatedWave extends StatelessWidget {
  final double height;
  final double speed;
  final double offset;

  AnimatedWave({this.height, this.speed, this.offset = 0.0});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: height,
        width: constraints.biggest.width,
        child: LoopAnimation<double>(
            duration: (5000 / speed).round().milliseconds,
            tween: 0.0.tweenTo(2 * pi),
            builder: (context, child, value) {
              return CustomPaint(
                foregroundPainter: CurvePainter(value + offset),
              );
            }),
      );
    });
  }
}

class CurvePainter extends CustomPainter {
  final double value;

  CurvePainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
    final white = Paint()..color = Colors.white.withAlpha(60);
    final path = Path();

    final y1 = sin(value);
    final y2 = sin(value + pi / 2);
    final y3 = sin(value + pi);

    final startPointY = size.height * (0.5 + 0.4 * y1);
    final controlPointY = size.height * (0.5 + 0.4 * y2);
    final endPointY = size.height * (0.5 + 0.4 * y3);

    path.moveTo(size.width * 0, startPointY);
    path.quadraticBezierTo(
        size.width * 0.5, controlPointY, size.width, endPointY);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

enum _BgProps { color1, color2 }

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<_BgProps>()
      ..add(
          _BgProps.color1, Color(0xffD38312).tweenTo(Colors.lightBlue.shade900))
      ..add(_BgProps.color2, Color(0xffA83279).tweenTo(Colors.blue.shade600));

    return MirrorAnimation<MultiTweenValues<_BgProps>>(
      tween: tween,
      duration: 3.seconds,
      builder: (context, child, value) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    value.get(_BgProps.color1),
                    value.get(_BgProps.color2)
                  ])),
        );
      },
    );
  }
}

class CenteredText extends StatelessWidget {
  const CenteredText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Coming Soon",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),        Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Subscribe to get notification as soon as we launch!",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              width: 500,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}