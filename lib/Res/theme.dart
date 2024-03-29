import 'package:flutter/material.dart';

class Palette {
  static Color primary = const Color(0xff005c9a);
  static Color liteGreen = const Color(0XFFF6F9F6);
  static Color greyText = const Color(0XFF484D48);
  static Color grey = const Color(0XFFCECECE);

  static Color black = Colors.black;
  static Color white = Colors.white;
  static Color red = const Color(0XFFc91b0c);
}

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.blue.shade50,
  colorScheme: const ColorScheme.light(
    background: Color(0xff27374d),
    primary: Color(0xff526D82),
    secondary: Color(0xffdde6ed),
  ),
);
