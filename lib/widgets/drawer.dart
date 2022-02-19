import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.google.com/search?q=avatars+icons&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjEv9TA3Yz2AhXQQfEDHYXHBl0Q_AUoAXoECAEQAw&biw=1600&bih=757&dpr=1#imgrc=jai2OL9CvAo52M";
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
                          CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
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
