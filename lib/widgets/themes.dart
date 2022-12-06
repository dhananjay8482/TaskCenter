import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.lato().fontFamily,
    // primaryTextTheme: GoogleFonts.latoTextTheme(),
    appBarTheme: AppBarTheme(
        color: Colors.white,
        // elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        // textTheme : Theme.of(context).textTheme,
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300
        )

    ),
  ) ;
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark
  );
}