import 'package:flutter/material.dart';

class AppTheme {
  static lightTheme() {
    return ThemeData(
        primaryColor: Colors.red,
        appBarTheme:
            const AppBarTheme(color: Colors.blueGrey, centerTitle: true),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey, fixedSize: const Size(450, 50))),
        inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.black),
            )));
  }

  static darkTheme() {
    return ThemeData.dark().copyWith(
        primaryColor: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey, fixedSize: const Size(450, 50))),
        inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.black),
            )));
  }
}
