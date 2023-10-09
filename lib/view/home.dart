import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieticket/effects/glitch.dart';
import 'package:movieticket/model/SearchModel.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar:  AppBar(
        title:  GlithEffect(child: Text("Now Showing"),),
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search,size: 25,),
            tooltip: 'Search Icon',
            onPressed: () {
              showSearch(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate()
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.message),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          //IconButton
        ], //<Widget>[]
        elevation: 50.0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ), //BoxDecoration
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.black,
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
                        style: TextStyle(fontSize: 30.0, color: Colors.black),
                      ), //Text
                    ), //circleAvatar
                  ), //UserAccountDrawerHeader
                ),
                ListTile(
                  leading: Icon(Icons.video_label),
                  title: Text(' Saved Blogs '),
                  onTap: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) =>
                  //               Liked()));
                   },
                ),//DrawerHeader
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(' My Profile '),
                  onTap: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) =>
                  //               Profile()));
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
          ),
          body:Container(
            child: SingleChildScrollView(
              child: Column(
                children: [

                ],
              ),
            ),
          ),

    ));
  }
}
