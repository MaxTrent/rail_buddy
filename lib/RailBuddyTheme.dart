import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constraints.dart';

class RailBuddyTheme{

  RailBuddyTheme._();


  static final ThemeData appTheme = ThemeData(
    textTheme: TextTheme(
      headline1: GoogleFonts.nunito(
        color: fColorBlue,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      headline2: GoogleFonts.nunito(
        color: fColorBlue,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
  );
}