import 'package:firstapplications/pages/login_page.dart';
import 'package:firstapplications/utilies/routes.dart';
import 'package:firstapplications/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:firstapplications/pages/home_page.dart';
import 'package:firstapplications/pages/cartpage.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,  
      theme : Mythemes.lightTheme(context),
      darkTheme: Mythemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
      "/" :(context) => LoginPage(),
      "/home" :(context) => Homepage(),
      "/cart" :(context) => Cartpage(),
      },
    );
  }
}
