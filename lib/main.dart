import 'package:firstapplications/core/store.dart';
import 'package:firstapplications/models/cart.dart';
import 'package:firstapplications/models/catalog.dart';
import 'package:firstapplications/pages/login_page.dart';
import 'package:firstapplications/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:firstapplications/pages/home_page.dart';
import 'package:firstapplications/pages/cartpage.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(CatalogModel(), CartModel()), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mythemes.lightTheme(context),
      darkTheme: Mythemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => Homepage(),
        "/cart": (context) => Cartpage(),
      },
    );
  }
}
