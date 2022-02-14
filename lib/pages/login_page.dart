import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset(
          "assets/images/login_image.png",
          fit: BoxFit.cover,
          height: 300,
        ),
        Text(
          "Login Form",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter username", labelText: "Username"),
              ),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter password", labelText: "Password")),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: Text("Login"),
                onPressed: () {
                  print("Hi Noman");
                },
              )
            ],
          ),
        )
      ]),
    );
  }
}
