import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/shared/constant/sizes.dart';

import 'app_color.dart';

ThemeData darkTheme() => ThemeData(
      primaryIconTheme: const IconThemeData(color: Colors.white),
      cardColor: AppColor.night,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.night,
        titleTextStyle: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: Sizes.p32,
            fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      iconTheme: const IconThemeData(
        color: AppColor.snowWhite,
      ),
      scaffoldBackgroundColor: AppColor.night,
      textTheme: TextTheme(
        displayMedium: GoogleFonts.roboto(
          fontSize: Sizes.p48,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        displaySmall: GoogleFonts.roboto(
          fontSize: Sizes.p32,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        headlineMedium: GoogleFonts.roboto(
          fontSize: Sizes.p20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        headlineSmall: GoogleFonts.roboto(
            fontSize: Sizes.p20,
            fontWeight: FontWeight.w700,
            color: Colors.white),
        titleMedium: GoogleFonts.roboto(
            fontSize: Sizes.p18,
            fontWeight: FontWeight.w500,
            color: Colors.white),
        titleSmall: GoogleFonts.roboto(
          fontSize: Sizes.p12,
          fontWeight: FontWeight.w600,
          color: const Color(0xFFFFFFFF),
        ),
        labelMedium: GoogleFonts.roboto(
            fontSize: Sizes.p12,
            fontWeight: FontWeight.w600,
            color: Colors.white),
        bodyMedium: GoogleFonts.roboto(
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
        titleTextStyle: GoogleFonts.roboto(
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
        displayMedium: GoogleFonts.roboto(
          fontSize: Sizes.p48,
          fontWeight: FontWeight.w700,
          color: AppColor.night,
        ),
        displaySmall: GoogleFonts.roboto(
          fontSize: Sizes.p32,
          fontWeight: FontWeight.w600,
          color: AppColor.rootBeer,
        ),
        headlineMedium: GoogleFonts.roboto(
          fontSize: Sizes.p20,
          fontWeight: FontWeight.w600,
          color: AppColor.night,
        ),
        headlineSmall: GoogleFonts.roboto(
          fontSize: Sizes.p20,
          fontWeight: FontWeight.w700,
          color: AppColor.nokiaBlue,
        ),
        titleMedium: GoogleFonts.roboto(
            fontSize: Sizes.p18,
            fontWeight: FontWeight.w500,
            color: AppColor.night),
        titleSmall: GoogleFonts.roboto(
            fontSize: Sizes.p12,
            fontWeight: FontWeight.w600,
            color: AppColor.night),
        labelMedium: GoogleFonts.roboto(
            fontSize: Sizes.p12,
            fontWeight: FontWeight.w600,
            color: AppColor.night),
        bodyMedium: GoogleFonts.roboto(
            fontSize: Sizes.p12,
            fontWeight: FontWeight.w600,
            color: AppColor.night),
      ),
    );
