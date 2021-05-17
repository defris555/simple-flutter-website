import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData basicTheme() => ThemeData(
      scaffoldBackgroundColor: Colors.grey[300],
      appBarTheme: AppBarTheme(color: Colors.grey[900]),
      textTheme: TextTheme(
        headline1: GoogleFonts.openSans(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        headline2: GoogleFonts.openSans(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
