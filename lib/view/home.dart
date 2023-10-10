import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieticket/effects/glitch.dart';
import 'package:movieticket/model/SearchModel.dart';
import 'package:movieticket/widgets/SearchField.dart';
import 'package:movieticket/widgets/carousel_sliderCard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.green.shade600,Colors.black26])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: GlithEffect(
            child: Text("Now Showing"),
          ),
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
                size: 25,
              ),
              tooltip: 'Search Icon',
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
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
              ), //DrawerHeader
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
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                InputText(MylableText: "Find Movie"),
                CarouselSlider(
                  items: [
                    //1st Image of Slider
                    CarouselCard(
                      imgname: "jawan.jpg",
                      moviename: "Jawan",
                      no_star: "8/10",
                      Location: "Ghaziabad",
                      year: " (2023)",
                    ),
                    CarouselCard(
                      imgname: "jawan.jpg",
                      moviename: "Jawan",
                      no_star: "8/10",
                      Location: "Ghaziabad",
                      year: "(2023)",
                    ),
                    CarouselCard(
                      imgname: "jawan.jpg",
                      moviename: "Jawan",
                      no_star: "8/10",
                      Location: "Ghaziabad",
                      year: "(2023)",
                    ),
                    CarouselCard(
                      imgname: "jawan.jpg",
                      moviename: "Jawan",
                      no_star: "8/10",
                      Location: "Ghaziabad",
                      year: "(2023)",
                    ),
                    CarouselCard(
                      imgname: "jawan.jpg",
                      moviename: "Jawan",
                      no_star: "8/10",
                      Location: "Ghaziabad",
                      year: "(2023)",
                    ),

                    //2nd Image of Slider
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 280,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 15 / 20,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 200),
                    viewportFraction: 0.6,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
