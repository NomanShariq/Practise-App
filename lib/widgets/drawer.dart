import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        
    return Drawer(
      child: DrawerHeader(
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          child: Container(
            color: Colors.green,
            child: ListView(
              children: [
                DrawerHeader(
                    padding: EdgeInsets.zero,
                    child: UserAccountsDrawerHeader(
                      margin: EdgeInsets.zero,
                      accountName: Text("Syed Noman Shariq"),
                      accountEmail: Text("Noman@gmail.com"),
                      currentAccountPicture:
                          CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thu…Roig_Mangues.jpg/220px-%C3%80lex_Roig_Mangues.jpg"),),
                    )),
                ListTile(
                  leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                  ),
                  title : Text(
                  "Home", style: TextStyle(color: Colors.white),
                  textScaleFactor: 1.2,
                )
                ),

                ListTile(
                  leading: Icon(
                    CupertinoIcons.mail),
                  iconColor: Colors.white,
                title: Text(
                  "Email",style: TextStyle(color: Colors.white),
                  textScaleFactor: 1.2,),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.profile_circled),
                  iconColor: Colors.white,
                  title: Text("Profile", style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          )),
    );
  }
}
