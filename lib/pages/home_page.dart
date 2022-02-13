import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "Noman";
  
    @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: Text("Navbar"),
     ),
      body: Center(
          child: Container(
            child: Text("Welcome to $days days of flutter by $name") ,
    ),
        ),  
    drawer: Drawer(),
    );
  }
}