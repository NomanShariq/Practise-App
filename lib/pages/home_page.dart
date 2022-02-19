import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "Noman";
  
    @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: Text("Navbar", textScaleFactor: 1.5,),
     ),
      body: Center(
          child: Container(
            child: Text("Welcome to $days days of flutter by $name") ,
    ),
        ),  
    drawer: Mydrawer(),
    );
  }
}