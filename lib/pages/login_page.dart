import 'package:firstapplications/utilies/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
            height: 300,
          ),
          Text(
            "Welcome $name",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter username", labelText: "Username"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password", labelText: "Password")),
                SizedBox(
                  height: 35.0,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changebutton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, "/home");
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: changebutton ? 50 : 36,
                    width: changebutton ? 50 : 118,
                    alignment: Alignment.center,
                    child: changebutton
                        ? Icon(
                            Icons.done_outline,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.circular(changebutton ? 50 : 8),
                    ),
                  ),
                ),
                // ElevatedButton(
                //   child: Text("Login"),
                //   style: TextButton.styleFrom(
                //     minimumSize: Size(130, 40),
                //   ),
                //   onPressed: () {
                //     Navigator.pushNamed(context, "/home");
                //   },
                // )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
