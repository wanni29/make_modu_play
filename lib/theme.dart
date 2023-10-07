import 'package:flutter/material.dart';
import 'package:netflix_ui/constants.dart';

ThemeData theme() {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(color: Colors.black),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: kTextColor),
    ),
  );
}
