import 'package:flutter/material.dart';

ThemeData themeScheme() => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.blueGrey[900],
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    );

Color backgroundWhite = Colors.white;
