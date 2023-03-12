import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/shared/constant/sizes.dart';

import 'app_color.dart';

ThemeData darkTheme() => ThemeData(
      primaryIconTheme: const IconThemeData(color: Colors.white),
      cardColor: AppColor.poseidon,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.poseidon,
        titleTextStyle: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: Sizes.p32,
            fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      iconTheme: const IconThemeData(
        color: AppColor.snowWhite,
      ),
      scaffoldBackgroundColor: AppColor.poseidon,
      textTheme: TextTheme(
        displayMedium: GoogleFonts.poppins(
          fontSize: Sizes.p48,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        displaySmall: GoogleFonts.poppins(
          fontSize: Sizes.p32,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        headlineMedium: GoogleFonts.poppins(
          fontSize: Sizes.p20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
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
      primaryIconTheme: const IconThemeData(color: AppColor.night),
      cardColor: AppColor.snowWhite,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.snowWhite,
        titleTextStyle: GoogleFonts.poppins(
            color: AppColor.night,
            fontSize: Sizes.p32,
            fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(
          color: AppColor.night,
        ),
      ),
      iconTheme: const IconThemeData(
        color: AppColor.night,
      ),
      scaffoldBackgroundColor: AppColor.snowWhite,
      textTheme: TextTheme(
        displayMedium: GoogleFonts.poppins(
          fontSize: Sizes.p48,
          fontWeight: FontWeight.w700,
          color: AppColor.night,
        ),
        displaySmall: GoogleFonts.poppins(
          fontSize: Sizes.p32,
          fontWeight: FontWeight.w600,
          color: AppColor.rootBeer,
        ),
        headlineMedium: GoogleFonts.poppins(
          fontSize: Sizes.p20,
          fontWeight: FontWeight.w600,
          color: AppColor.night,
        ),
        headlineSmall: GoogleFonts.poppins(
          fontSize: Sizes.p20,
          fontWeight: FontWeight.w700,
          color: AppColor.nokiaBlue,
        ),
        titleMedium: GoogleFonts.poppins(
            fontSize: Sizes.p18,
            fontWeight: FontWeight.w500,
            color: AppColor.night),
        titleSmall: GoogleFonts.poppins(
            fontSize: Sizes.p12,
            fontWeight: FontWeight.w600,
            color: AppColor.night),
        labelMedium: GoogleFonts.poppins(
            fontSize: Sizes.p12,
            fontWeight: FontWeight.w600,
            color: AppColor.night),
        bodyMedium: GoogleFonts.poppins(
            fontSize: Sizes.p12,
            fontWeight: FontWeight.w600,
            color: AppColor.night),
      ),
    );
