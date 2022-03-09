import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instant_messenger/utils/constants.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    // appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentLightColor),
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    textTheme: GoogleFonts.interTextTheme(
        Theme.of(context).textTheme.apply(bodyColor: kContentLightColor)),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   selectedItemColor: kPrimaryColor,
    //   selectedIconTheme: IconThemeData(color: kPrimaryColor),
    // )
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kContentLightColor,
      // appBarTheme: appBarTheme,
      iconTheme: IconThemeData(color: kContentDarkColor),
      colorScheme: ColorScheme.dark(
        primary: kPrimaryColor,
        secondary: kSecondaryColor,
        error: kErrorColor,
      ),
      textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme.apply(bodyColor: kContentDarkColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: kContentLightColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: kContentDarkColor.withOpacity(0.32),
          selectedIconTheme: IconThemeData(color: Colors.white)));
}
