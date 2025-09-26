import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color seedColor = Color(0xffFF0000);

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.concertOneTextTheme(),
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.light,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.concertOneTextTheme(),
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.dark,
    ),
  );
}
