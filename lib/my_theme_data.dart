import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primary = Color(0xFFB7935F);
  static const Color blackColor = Color(0xFF242424);
  static const Color darkPrimary = Color(0xFF0F1424);
  static const Color yellowColor = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
    iconTheme: IconThemeData(color: primary),
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: primary,
        onPrimary: Colors.black54,
        secondary: Colors.black,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: primary,
        onBackground: Colors.grey,
        surface: Colors.blueGrey,
        onSurface: Colors.white
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
          color: primary
      ),
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
  static ThemeData darkTheme = ThemeData(
    iconTheme: IconThemeData(color: primary),
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: darkPrimary,
        onPrimary: Colors.white,
        secondary: yellowColor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: yellowColor,
        onBackground: Colors.grey,
        surface: Colors.blueGrey,
        onSurface: Colors.white
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: GoogleFonts.elMessiri(
        color: yellowColor,
        fontSize: 20,
        fontWeight: FontWeight.w100,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: darkPrimary,
      unselectedItemColor: Colors.white,
      selectedItemColor: yellowColor,
    ),
  );
}
