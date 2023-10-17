import 'package:flutter/material.dart';
import 'package:tele_connect/core/constant/color_constant.dart';

class AppTheme {
  static AppTheme instance = AppTheme._init();
  AppTheme._init();

  final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      elevation: 1,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.red,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          color: mainWhite,
        ),
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}
