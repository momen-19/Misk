import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_manger.dart';

ThemeData theme = ThemeData(
  primarySwatch: Colors.purple,
  scaffoldBackgroundColor: ColorManger.scaColor,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: ColorManger.lColor,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: ColorManger.scaColor,
    elevation: 0.0,
    titleTextStyle: const TextStyle(
      fontFamily: 'Cairo',
      color: Colors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: ColorManger.defaultColor,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: ColorManger.defaultColor,
    unselectedItemColor: Colors.black45,
    elevation: 0,
    backgroundColor: ColorManger.scaColor,
  ),
  fontFamily: 'Cairo',
);
