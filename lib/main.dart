import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:animations/animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:treecome/pages/Home.dart';

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
      routes: {},
      title: 'Treecome 2021',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xffff914d),
          textTheme: ButtonTextTheme.accent,
          colorScheme:
              Theme.of(context).colorScheme.copyWith(secondary: Colors.white),
        ),
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
          Theme.of(context).textTheme.apply(
                fontSizeFactor: 1,
                fontSizeDelta: 2.0,
              ),
        ),
      ),
      home: ScreenTypeLayout(
        mobile: Mobile(),
        desktop: Desktop(),
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
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text("Committee"),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text("Call for Papers"),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text("Registration"),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text("Contact Us"),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Row(
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
