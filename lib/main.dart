import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:animations/animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:treecome/pages/Call_for_papers.dart';
import 'package:treecome/pages/Committee.dart';
import 'package:treecome/pages/Home.dart';
import 'package:treecome/pages/Registration.dart';

void main() {
  runApp(MyApp());
}

class App extends StatelessWidget {
  // Create the initialization Future outside of `build`:
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
    return MaterialApp(
      initialRoute: "/",
      routes: {
/*
        '/': (context) => Home(),
*/
        "/Committee": (context) => Committee(),
/*        "/Call_for_papers": (context) => Call_for_papers(),
        "/Registration": (context) => Registration(),*/
      },
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
          Theme.of(context).textTheme.apply(fontSizeFactor: 1,fontSizeDelta: 2.0,),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Icon(MdiIcons.palmTree),
          title: Text("Treecome"),
          actions: [
            SizedBox(
              width: 800,
              child: TabBar(
                tabs: [
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
                ],
              ),
            )
          ],
        ),
        body: TabBarView(
          children: [
            Home(),
            Committee(),
            Call_for_papers(),
            Registration()
          ],
        ),
      ),
    );
  }
}
