import 'package:flutter/material.dart';

const _primarySwatch = Colors.lightBlue;
const _appBarColor = Color.fromARGB(255, 115, 22, 177);
const _appBarTextColor = Color.fromARGB(255, 255, 255, 255);
const _appBarIconColor = Color.fromARGB(255, 255, 255, 255);

const _inputBorderColor = Colors.black;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: _primarySwatch,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Color.fromARGB(255, 105, 40, 131),
      onPrimary: Colors.white,
    ),
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(color: _appBarTextColor, fontSize: 25),
    backgroundColor: _appBarColor,
    iconTheme: IconThemeData(color: _appBarIconColor),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _inputBorderColor),
    ),
  ),
);
