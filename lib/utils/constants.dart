import 'package:flutter/material.dart';

class Constants {
  static const String flavourDev = "dev";
  static const String flavourProd = "prod";
  static const String theme = String.fromEnvironment('THEME');
  static ThemeData themeDev =
      ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.red));
  static ThemeData themeProd =
      ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.green));

  static String baseUrl = "https://dummyjson.com";
}
