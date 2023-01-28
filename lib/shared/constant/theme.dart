import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/shared/constant/sizes.dart';

ThemeData darkTheme() => ThemeData(
      primaryIconTheme: const IconThemeData(color: Colors.white),
      cardColor: const Color(0xFF030E21),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey.shade900,
        titleTextStyle: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: Sizes.p32,
            fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      scaffoldBackgroundColor: Colors.grey[900],
      textTheme: TextTheme(
        headlineSmall: GoogleFonts.poppins(
            fontSize: Sizes.p20,
            fontWeight: FontWeight.w700,
            color: Colors.white),
        titleMedium: GoogleFonts.poppins(
            fontSize: Sizes.p18,
            fontWeight: FontWeight.w500,
            color: Colors.white),
        titleSmall: GoogleFonts.poppins(
          fontSize: Sizes.p12,
          fontWeight: FontWeight.w600,
          color: const Color(0xFFFFFFFF),
        ),
        labelMedium: GoogleFonts.poppins(
            fontSize: Sizes.p12,
            fontWeight: FontWeight.w600,
            color: Colors.white),
        bodyMedium: GoogleFonts.poppins(
            fontSize: Sizes.p12,
            fontWeight: FontWeight.w600,
            color: Colors.orange),
      ),
    );

ThemeData lightTheme() => ThemeData(
      primaryIconTheme: const IconThemeData(color: Colors.black),
      cardColor: Colors.grey[300],
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFFFFFFFF),
        titleTextStyle: GoogleFonts.poppins(
            color: const Color(0xFF030E21),
            fontSize: Sizes.p32,
            fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(
          color: Color(0xFF030E21),
        ),
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      textTheme: TextTheme(
        headlineSmall: GoogleFonts.poppins(
            fontSize: Sizes.p20,
            fontWeight: FontWeight.w700,
            color: Colors.black),
        titleMedium: GoogleFonts.poppins(
            fontSize: Sizes.p18,
            fontWeight: FontWeight.w500,
            color: Colors.black),
        titleSmall: GoogleFonts.poppins(
            fontSize: Sizes.p12,
            fontWeight: FontWeight.w600,
            color: Colors.black),
        labelMedium: GoogleFonts.poppins(
            fontSize: Sizes.p12,
            fontWeight: FontWeight.w600,
            color: Colors.black),
        bodyMedium: GoogleFonts.poppins(
            fontSize: Sizes.p12,
            fontWeight: FontWeight.w600,
            color: Colors.black),
      ),
    );
