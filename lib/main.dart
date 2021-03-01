import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:easyPay/utils/utils.dart';

import 'package:easyPay/screens/home.dart';
import 'package:easyPay/screens/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

ThemeData buildTheme() {
  final ThemeData _base = ThemeData(
      primarySwatch: CreateMaterialColor(Color.fromRGBO(51, 12, 39, 1.0)));

  return _base.copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: GoogleFonts.firaSansExtraCondensedTextTheme(_base.textTheme
          .apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
              decorationColor: Colors.white)),
      inputDecorationTheme: InputDecorationTheme(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white54)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white54)),
          focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white54)),
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white54)),
          labelStyle: TextStyle(color: Colors.white54),
          helperStyle: TextStyle(color: Colors.white54),
          hintStyle: TextStyle(color: Colors.white54),
          errorStyle: TextStyle(color: Colors.white54)));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: buildTheme(),
        initialRoute: Welcome.routeName,
        routes: {
          Welcome.routeName: (context) => Welcome(),
          Home.routeName: (context) => Home(),
        });
  }
}
