import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/shared/constant/sizes.dart';

ThemeData lightTheme() => ThemeData(
      primaryIconTheme: const IconThemeData(color: Colors.white),
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF030E21),
        titleTextStyle: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: Sizes.p32,
            fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      scaffoldBackgroundColor: const Color(0xFF030E21),
      textTheme: TextTheme(
        headlineSmall: GoogleFonts.poppins(
          fontSize: Sizes.p20,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: GoogleFonts.poppins(
            fontSize: Sizes.p18, fontWeight: FontWeight.w500),
        titleSmall: GoogleFonts.poppins(
            fontSize: Sizes.p12,
            fontWeight: FontWeight.w600,
            color: Colors.orange),
      ),
    );
