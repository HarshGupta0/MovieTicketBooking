import 'package:flutter/material.dart';
import 'package:movieticket/view/ProfilePage.dart';
import 'package:movieticket/view/TheaterFavScreen.dart';
class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff618264).withOpacity(.9),
            ), //BoxDecoration
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color:Color(0xff618264).withOpacity(0),
              ),
              accountName: Text(
                "HARSH GUPTA",
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: Text("iharshgupta.2003@gmail.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white.withOpacity(.6),
                child: Text(
                  "H",
                  style: TextStyle(fontSize: 30.0, color:Color(0xff618264)),
                ), //Text
              ), //circleAvatar
            ), //UserAccountDrawerHeader
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorite Theater'),
            onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>TheaterFavScreen()
                       ));
            },
          ), //DrawerHeader
          ListTile(
            leading: Icon(Icons.person),
            title: Text(' My Profile '),
            onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProfilePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.workspace_premium),
            title: Text(' Go Premium '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text(' Edit Profile '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('LogOut'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
