import 'package:flutter/material.dart';

var lightThemeData = ThemeData(
  primarySwatch: Colors.blueGrey,
  backgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
  ),
  bottomAppBarColor: Colors.blueGrey[900],
  iconTheme: IconThemeData(color: Colors.blueGrey),
  brightness: Brightness.light,
);

var darkThemeData = ThemeData(
  primarySwatch: Colors.blueGrey,
  backgroundColor: Colors.blueGrey[600],
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blueGrey[600],
  ),
  bottomAppBarColor: Colors.blueGrey[600],
  iconTheme: IconThemeData(color: Colors.blueGrey[200]),
  brightness: Brightness.dark,
);