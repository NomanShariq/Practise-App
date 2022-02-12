// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "Noman";

  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: Text("Mobile Market"),
    ),
      body: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to $days days of flutter by $name") ,
    ),
        ),  
    ),
    drawer: Drawer(),
    );
  }
}