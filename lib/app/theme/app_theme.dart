import 'package:flutter/material.dart';

final Color primaryColor = Color(0xFF3876F2);
final Color secondaryColor = Color(0xFFF59904);

final ThemeData appTheme = ThemeData(
  primaryColor: primaryColor,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: secondaryColor),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    color: primaryColor,
    elevation: 2,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
    headline2: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
    bodyText1: TextStyle(fontSize: 16, color: Colors.black),
    bodyText2: TextStyle(fontSize: 14, color: Colors.black87),
  ),
);
