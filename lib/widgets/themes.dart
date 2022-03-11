import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Mythemes {
  Mythemes(Color creamcolour);

  static ThemeData Lighttheme(BuildContext context) => ThemeData(
      primaryColor: Colors.green,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        titleTextStyle: TextStyle(color: Colors.black),
        brightness: Brightness.light,
      ));
  static ThemeData Darktheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );

  //colors

  static Color Creamcolour = Color.fromARGB(255, 245, 245, 245);
  static Color bluishcolour = Color.fromARGB(239, 11, 29, 78);
}
