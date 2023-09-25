import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primary = Color(0xFFB7935F);
  static const Color blackColor = Color(0xFF242424);
  static ThemeData lightTheme = ThemeData(
    iconTheme: IconThemeData(color: primary),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        color: Color(0xFF242424),
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: GoogleFonts.elMessiri(
        color: Color(0xFFFFFFFF),
        fontSize: 20,
        fontWeight: FontWeight.w100,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        color: blackColor,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: primary,
      unselectedItemColor: Colors.white,
      selectedItemColor: blackColor,
    ),
  );
// static ThemeData darkTheme = ThemeData();
}
