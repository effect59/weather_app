import 'package:flutter/material.dart';

final theme = ThemeData(
  //  primarySwatch: Colors.blue,
  appBarTheme: const AppBarTheme(
      color: Colors.blueGrey,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      )),
  scaffoldBackgroundColor: Colors.grey,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
  ),
);
