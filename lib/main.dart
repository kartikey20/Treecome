import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:animations/animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/pages/Home.dart';

void main() {
  runApp(MyApp());
}

class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Text("fdsfd");
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MyApp();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return CircularProgressIndicator();
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const MaterialColor primaryGreen = MaterialColor(
      0xff309071,
      <int, Color>{
        50: Color(0xff309071),
        100: Color(0xff309071),
        200: Color(0xff309071),
        300: Color(0xff309071),
        400: Color(0xff309071),
        500: Color(0xff309071),
        600: Color(0xff309071),
        700: Color(0xff309071),
        800: Color(0xff309071),
        900: Color(0xff309071),
      },
    );
    return ScreenTypeLayout(
      mobile: MaterialApp(
        initialRoute: "/",
        routes: {},
        title: 'Treecome 2021',
        theme: ThemeData(
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: SharedAxisPageTransitionsBuilder(
                transitionType: SharedAxisTransitionType.horizontal,
              ),
              TargetPlatform.iOS: SharedAxisPageTransitionsBuilder(
                transitionType: SharedAxisTransitionType.horizontal,
              ),
            },
          ),
          primarySwatch: primaryGreen,
          textTheme: GoogleFonts.robotoTextTheme(
            Theme.of(context).textTheme.copyWith(
                  headline1: TextStyle(fontSize: 20.0, color: Colors.black),
                  bodyText1: TextStyle(
                    fontSize: 16.0,
                    color: HexColor("#696E83"),
                  ),
                ),
          ),
        ),
        home: Mobile(),
      ),
      desktop: MaterialApp(
        initialRoute: "/",
        routes: {},
        title: 'Treecome 2021',
        theme: ThemeData(
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: SharedAxisPageTransitionsBuilder(
                transitionType: SharedAxisTransitionType.horizontal,
              ),
              TargetPlatform.iOS: SharedAxisPageTransitionsBuilder(
                transitionType: SharedAxisTransitionType.horizontal,
              ),
            },
          ),
          primarySwatch: primaryGreen,
          textTheme: GoogleFonts.robotoTextTheme(
            Theme.of(context).textTheme.copyWith(
                  headline1:
                      TextStyle(fontSize: 40.0, color: Colors.black, height: 2),
                  bodyText1: TextStyle(
                    fontSize: 16.0,
                    height: 2,
                    color: HexColor("#696E83"),
                  ),
                ),
          ),
        ),
        home: Desktop(),
      ),
    );
  }
}

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 5,
        child: ListView(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          shrinkWrap: true,
          children: <Widget>[
            DrawerHeader(
              child: Row(
                children: [
                  Icon(MdiIcons.palmTree),
                  Text('Treecome 2021'),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Committee",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Call for Papers",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Registration",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Contact Us",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(MdiIcons.palmTree),
            SelectableText("Treecome"),
          ],
        ),
        actions: [Icon(Icons.search)],
      ),
      body: Home(),
    );
  }
}

class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Treecome"),
        leading: Icon(MdiIcons.palmTree),
        actions: [
          FlatButton(
            onPressed: () {},
            child: Text("Home"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Commttiee"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Call for Papers"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Registration"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Contact Us"),
          ),
        ],
      ),
      body: Home(),
    );
  }
}
