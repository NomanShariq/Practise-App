import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Mythemes {
  Mythemes(Color creamcolour);

  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: bluishcolour,
        cardColor: Color(0xFFFFFFFF),
        brightness: Brightness.light,
        canvasColor: Creamcolour,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.black),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        primaryColor: Creamcolour,
        cardColor: Colors.black,
        canvasColor: darkCreamcolour,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
      );

  //colors
  static Color darkCreamcolour = Vx.gray800;
  static Color Creamcolour = Color.fromARGB(255, 245, 245, 245);
  static Color bluishcolour = Color.fromARGB(239, 11, 29, 78);
  static Color darkbluishcolour = Vx.indigo900;
}
