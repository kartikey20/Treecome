import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:animations/animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:treecome/pages/Committee.dart';
import 'package:treecome/pages/Home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(
              snapshot.toString(),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MyApp();
        }
        return CircularProgressIndicator(
          strokeWidth: 1,
        );
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
      title: 'Treecome 2021',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(padding: EdgeInsets.fromLTRB(30,0,30,0),
          buttonColor: Colors.white,
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
          Theme.of(context).textTheme.copyWith(
                headline1: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    height: 2),
                bodyText1: TextStyle(
                  fontSize: 16.0,
                  height: 2,
                  color: HexColor("#696E83"),
                ),
              ),
        ),
      ),
      home: Home(),
    );
  }
}
