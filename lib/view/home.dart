import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieticket/effects/glitch.dart';
import 'package:movieticket/model/SearchModel.dart';
import 'package:movieticket/widgets/MainCard.dart';
import 'package:movieticket/widgets/SearchField.dart';
import 'package:movieticket/widgets/carousel_sliderCard.dart';
import 'package:movieticket/widgets/drawer.dart';
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
              colors: [Colors.green.shade600, Colors.black26])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Color(0xff618264).withOpacity(.9),
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
        drawer: drawer(),
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                InputText(MylableText: "Find Movie"),
                SizedBox(
                  height: 10,
                ), //
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New Movies",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "AlegreyaSans",
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See More",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "AlegreyaSans",
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ), //heading
                SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  items: [
                    CarouselCard(imgname: "images/jawan.jpg", name: "Jawan", description:"Action", star:"7.5/10", date:" 2-09-2023"),
                    CarouselCard(imgname: "images/tiger3.jpg", name: "Tiger 3", description:"Action.Drama", star:"8/10", date:" 10-11-2023"),
                    CarouselCard(imgname: "images/missionRaniganj.jpg", name: "Mission Raniganj", description:"Biopic.Drama", star:"6/10", date:" 12-11-2023"),
                    CarouselCard(imgname: "images/yaariyan2.jpg", name: "Yaariyan 2", description:"Romance.Action", star:"7/10", date:" 22-15-2023"),
                    CarouselCard(imgname: "images/tejas.jpg", name: "Tejas", description:"Action.BioPic", star:"8/10", date:" 25-12-2023"),
                    //2nd Image of Slider
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 280,
                    autoPlay: true,
                    aspectRatio: 15 / 20,
                    autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 200),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "AlegreyaSans",
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See More",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(7),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 247,
                            child: HomeCard(
                                imgname: "images/tiger3.jpg",
                                name: "Tiger 3",
                                description: "Drama.Action",
                                star: "7/10",
                                date: "12-9-23"),
                          ),
                          Container(
                            width: 247,
                            child: HomeCard(
                                imgname: "images/adipurush.jpg",
                                name: "Adipurush",
                                description: "Drama . Action . History",
                                star: "5/10",
                                date: "12-9-23"),
                          ),
                          Container(
                            width: 247,
                            child: HomeCard(
                                imgname: "images/omg2.jpg",
                                name: "OMG 2",
                                description: "Drama. Education",
                                star: "7/10",
                                date: "12-9-23"),
                          ),
                          Container(
                            width: 247,
                            child: HomeCard(
                                imgname: "images/jawan.jpg",
                                name: "Jawan",
                                description: "Drama.Action",
                                star: "7/10",
                                date: "12-9-23"),
                          ),
                          Container(
                            width: 247,
                            child: HomeCard(
                                imgname: "images/uturn.jpg",
                                name: "Uturn",
                                description: "Drama.Action",
                                star: "6.5/10",
                                date: "12-9-23"),
                          ),
                        ],
                      ),
                    )), //////////
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recently added",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "AlegreyaSans",
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See More",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    margin: EdgeInsets.all(7),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 247,
                            child: HomeCard(
                                imgname: "images/ib71.jpg",
                                name: "IB 71",
                                description: "Drama.Action",
                                star: "7.5/10",
                                date: "12-9-23"),
                          ),
                          Container(
                            width: 247,
                            child: HomeCard(
                                imgname: "images/bloodyDaddy.jpg",
                                name: "bloody Daddy",
                                description: "Drama . Action . History",
                                star: "6/10",
                                date: "12-9-23"),
                          ),
                          Container(
                            width: 247,
                            child: HomeCard(
                                imgname: "images/gumraah.jpg",
                                name: "Gumraah",
                                description: "Drama. Education",
                                star: "6.5/10",
                                date: "12-9-23"),
                          ),
                          Container(
                            width: 247,
                            child: HomeCard(
                                imgname: "images/missionRaniganj.jpg",
                                name: "Mission Raniganj",
                                description: "Drama.Action",
                                star: "8/10",
                                date: "12-9-23"),
                          ),
                          Container(
                            width: 247,
                            child: HomeCard(
                                imgname: "images/bheed.jpg",
                                name: "Bheed",
                                description: "Drama.Action",
                                star: "6/10",
                                date: "12-10-23"),
                          ),
                        ],
                      ),
                    )),
                Container(
                    margin: EdgeInsets.all(7),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 247,
                            child: HomeCard(
                                imgname: "images/Blackpanther2.jpg",
                                name: "Black panther 2 ",
                                description: "Drama.Action",
                                star: "7/10",
                                date: "12-9-23"),
                          ),
                          Container(
                            width: 247,
                            child: HomeCard(
                                imgname: "images/avatar the way of water.jpg",
                                name: "Avatar The Way of Water",
                                description: "Drama . Action . History",
                                star: "8.5/10",
                                date: "12-9-23"),
                          ),
                          Container(
                            width: 247,
                            child: HomeCard(
                                imgname: "images/TheWhale.webp",
                                name: "The Whale ",
                                description: "Drama. Education",
                                star: "9/10",
                                date: "12-9-23"),
                          ),
                          Container(
                            width: 247,
                            child: HomeCard(
                                imgname: "images/babylon.jpg",
                                name: "Babylon",
                                description: "Drama.Action",
                                star: "8/10",
                                date: "12-9-23"),
                          ),
                        ],
                      ),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Offer ",
                        style: TextStyle(
                            fontFamily: "AlegreyaSans",
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See More",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
                CarouselSlider(
                  items: [
                    CarouselCard(imgname: "images/jawan.jpg", name: "Jawan", description:"Action", star:"7.5/10", date:" 2-09-2023"),
                    CarouselCard(imgname: "images/tiger3.jpg", name: "Tiger 3", description:"Action.Drama", star:"8/10", date:" 10-11-2023"),
                    CarouselCard(imgname: "images/missionRaniganj.jpg", name: "Mission Raniganj", description:"Biopic.Drama", star:"6/10", date:" 12-11-2023"),
                    CarouselCard(imgname: "images/yaariyan2.jpg", name: "Yaariyan 2", description:"Romance.Action", star:"7/10", date:" 22-15-2023"),
                    CarouselCard(imgname: "images/tejas.jpg", name: "Tejas", description:"Action.BioPic", star:"8/10", date:" 25-12-2023"),
                    //2nd Image of Slider
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 280,
                    autoPlay: true,
                    aspectRatio: 15 / 20,
                    autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 200),
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
