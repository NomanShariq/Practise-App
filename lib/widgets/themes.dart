import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Mythemes {
  static ThemeData Lighttheme(BuildContext context) => ThemeData(
            primaryColor: Colors.green,
            appBarTheme: AppBarTheme(
              color: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              elevation: 0,
              titleTextStyle: TextStyle(color: Colors.black),
              brightness: Brightness.light,
            )
      );
      static ThemeData Darktheme(BuildContext context) => ThemeData(
            brightness: Brightness.dark,
            );
}
