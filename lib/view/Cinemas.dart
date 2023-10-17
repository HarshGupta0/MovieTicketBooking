import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieticket/widgets/MainCard.dart';
class Cinemas extends StatefulWidget {
  const Cinemas({super.key});

  @override
  State<Cinemas> createState() => _CinemasState();
}

class _CinemasState extends State<Cinemas> {
  bool _isPressedDrama = true;
  bool _isPressedAction = false;
  bool _isPressedHorror = false;
  bool _isPressedRomance = false;
  bool _isPressedThirller = false;
  bool _isPressedComdey = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text('GENRES'),
        centerTitle: true,
        backgroundColor: Color(0xff618264).withOpacity(.9),
      ),
      body: SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "GENERS",
                    style: TextStyle(
                        color: Color(0xff618264).withOpacity(.9),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            _isPressedDrama = true;
                            _isPressedAction = false;
                            _isPressedHorror = false;
                            _isPressedRomance = false;
                            _isPressedThirller = false;
                            _isPressedComdey = false;
                          });
                        },
                        child: (Text(
                          "Drama",
                          style: _isPressedDrama
                              ? TextStyle(color: Colors.white)
                              : TextStyle(
                              color: Color(0xff618264).withOpacity(.9)),
                        )),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: _isPressedDrama
                              ? Color(0xff618264).withOpacity(.9)
                              : Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            _isPressedDrama = false;
                            _isPressedAction =true;
                            _isPressedHorror = false;
                            _isPressedRomance = false;
                            _isPressedThirller = false;
                            _isPressedComdey = false;
                          });
                        },
                        child: (Text(
                          "Action",
                          style: _isPressedAction
                              ? TextStyle(color: Colors.white)
                              : TextStyle(
                              color: Color(0xff618264).withOpacity(.9)),
                        )),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: _isPressedAction
                              ? Color(0xff618264).withOpacity(.9)
                              : Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            _isPressedDrama = false;
                            _isPressedAction = false;
                            _isPressedHorror =true;
                            _isPressedRomance = false;
                            _isPressedThirller = false;
                            _isPressedComdey = false;
                          });
                        },
                        child: (Text(
                          "Horror",
                          style: _isPressedHorror
                              ? TextStyle(color: Colors.white)
                              : TextStyle(
                              color: Color(0xff618264).withOpacity(.9)),
                        )),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: _isPressedHorror
                              ? Color(0xff618264).withOpacity(.9)
                              : Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            _isPressedDrama = false;
                            _isPressedAction = false;
                            _isPressedHorror = false;
                            _isPressedRomance =true;
                            _isPressedThirller = false;
                            _isPressedComdey = false;
                          });
                        },
                        child: (Text(
                          "Romance",
                          style: _isPressedRomance
                              ? TextStyle(color: Colors.white)
                              : TextStyle(
                              color: Color(0xff618264).withOpacity(.9)),
                        )),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: _isPressedRomance
                              ? Color(0xff618264).withOpacity(.9)
                              : Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            _isPressedDrama =false;
                            _isPressedAction = false;
                            _isPressedHorror = false;
                            _isPressedRomance = false;
                            _isPressedThirller =false;
                            _isPressedComdey = true;
                          });
                        },
                        child: (Text(
                          "Comdey",
                          style: _isPressedComdey
                              ? TextStyle(color: Colors.white)
                              : TextStyle(
                              color: Color(0xff618264).withOpacity(.9)),
                        )),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: _isPressedComdey
                              ? Color(0xff618264).withOpacity(.9)
                              : Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            _isPressedDrama =false;
                            _isPressedAction = false;
                            _isPressedHorror = false;
                            _isPressedRomance = false;
                            _isPressedThirller =true;
                            _isPressedComdey = false;
                          });
                        },
                        child: (Text(
                          "Thirller",
                          style: _isPressedThirller
                              ? TextStyle(color: Colors.white)
                              : TextStyle(
                              color: Color(0xff618264).withOpacity(.9)),
                        )),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: _isPressedThirller
                              ? Color(0xff618264).withOpacity(.9)
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                    visible: _isPressedDrama,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
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
                                  "Others ",
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
                          Container(
                            child: Row(children: [
                            Expanded(child: Container(
                              width: 247,
                              child: HomeCard(
                                  imgname: "images/Blackpanther2.jpg",
                                  name: "Black panther 2 ",
                                  description: "Drama.Action",
                                  star: "7/10",
                                  date: "12-9-23"),
                            ),),
                            Expanded(child: Container(
                              width: 247,
                              child: HomeCard(
                                  imgname: "images/dreamgirl2.jpg",
                                  name: "Dream girl 2",
                                  description: "Drama.Action",
                                  star: "8/10",
                                  date: "1-8-23"),
                            ),),
                          ],),),
                          Container(
                            child: Row(children: [
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/jailer2.jpg",
                                    name: "Jailer 2",
                                    description: "Drama.Action",
                                    star: "8.5/10",
                                    date: "12-10-23"),
                              ),),
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/ganapath.jpg",
                                    name: "Ganapath ",
                                    description: "Drama.Action",
                                    star: "6/10",
                                    date: "25-10-23"),
                              ),),
                            ],),),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Most Awaited",
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
                        ],
                      ),)),
                Visibility(
                    visible: _isPressedAction,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
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
                                          imgname: "images/blueBeetle.jpg",
                                          name: "Blue Beetle",
                                          description: "Drama.Action",
                                          star: "8.5/10",
                                          date: "1-11-23"),
                                    ),
                                    Container(
                                      width: 247,
                                      child: HomeCard(
                                          imgname: "images/Flash.png",
                                          name: "Flash",
                                          description: "Drama . Action . History",
                                          star: "6/10",
                                          date: "22-8-23"),
                                    ),
                                    Container(
                                      width: 247,
                                      child: HomeCard(
                                          imgname: "images/johnwickchapter4.png",
                                          name: "Johnwick Chapter 4",
                                          description: "Action . Drama",
                                          star: "7.5/10",
                                          date: "2-10-23"),
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
                                          imgname: "images/sazam-2.png",
                                          name: "sazam 2",
                                          description: "Drama.Action",
                                          star: "6.5/10",
                                          date: "07-08-23"),
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
                                          imgname: "images/sazam-2.png",
                                          name: "sazam 2",
                                          description: "Drama.Action",
                                          star: "6.5/10",
                                          date: "07-08-23"),
                                    ),
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
                                          imgname: "images/johnwickchapter4.png",
                                          name: "Johnwick Chapter 4",
                                          description: "Action . Drama",
                                          star: "7.5/10",
                                          date: "2-10-23"),
                                    ),
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
                                  "Others ",
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
                          Container(
                            child: Row(children: [
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/Blackpanther2.jpg",
                                    name: "Black panther 2 ",
                                    description: "Drama.Action",
                                    star: "7/10",
                                    date: "12-9-23"),
                              ),),
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/dreamgirl2.jpg",
                                    name: "Dream girl 2",
                                    description: "Drama.Action",
                                    star: "8/10",
                                    date: "1-8-23"),
                              ),),
                            ],),),
                          Container(
                            child: Row(children: [
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/jailer2.jpg",
                                    name: "Jailer 2",
                                    description: "Drama.Action",
                                    star: "8.5/10",
                                    date: "12-10-23"),
                              ),),
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/ganapath.jpg",
                                    name: "Ganapath ",
                                    description: "Drama.Action",
                                    star: "6/10",
                                    date: "25-10-23"),
                              ),),
                            ],),),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Most Awaited",
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
                        ],
                      ),)),
                Visibility(
                    visible: _isPressedHorror,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
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
                                  "Others ",
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
                          Container(
                            child: Row(children: [
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/Blackpanther2.jpg",
                                    name: "Black panther 2 ",
                                    description: "Drama.Action",
                                    star: "7/10",
                                    date: "12-9-23"),
                              ),),
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/dreamgirl2.jpg",
                                    name: "Dream girl 2",
                                    description: "Drama.Action",
                                    star: "8/10",
                                    date: "1-8-23"),
                              ),),
                            ],),),
                          Container(
                            child: Row(children: [
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/jailer2.jpg",
                                    name: "Jailer 2",
                                    description: "Drama.Action",
                                    star: "8.5/10",
                                    date: "12-10-23"),
                              ),),
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/ganapath.jpg",
                                    name: "Ganapath ",
                                    description: "Drama.Action",
                                    star: "6/10",
                                    date: "25-10-23"),
                              ),),
                            ],),),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Most Awaited",
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
                        ],
                      ),)),
                Visibility(
                    visible: _isPressedRomance,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
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
                                  "Others ",
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
                          Container(
                            child: Row(children: [
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/Blackpanther2.jpg",
                                    name: "Black panther 2 ",
                                    description: "Drama.Action",
                                    star: "7/10",
                                    date: "12-9-23"),
                              ),),
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/dreamgirl2.jpg",
                                    name: "Dream girl 2",
                                    description: "Drama.Action",
                                    star: "8/10",
                                    date: "1-8-23"),
                              ),),
                            ],),),
                          Container(
                            child: Row(children: [
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/jailer2.jpg",
                                    name: "Jailer 2",
                                    description: "Drama.Action",
                                    star: "8.5/10",
                                    date: "12-10-23"),
                              ),),
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/ganapath.jpg",
                                    name: "Ganapath ",
                                    description: "Drama.Action",
                                    star: "6/10",
                                    date: "25-10-23"),
                              ),),
                            ],),),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Most Awaited",
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
                        ],
                      ),)),
                Visibility(
                    visible: _isPressedComdey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
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
                                  "Others ",
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
                          Container(
                            child: Row(children: [
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/Blackpanther2.jpg",
                                    name: "Black panther 2 ",
                                    description: "Drama.Action",
                                    star: "7/10",
                                    date: "12-9-23"),
                              ),),
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/dreamgirl2.jpg",
                                    name: "Dream girl 2",
                                    description: "Drama.Action",
                                    star: "8/10",
                                    date: "1-8-23"),
                              ),),
                            ],),),
                          Container(
                            child: Row(children: [
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/jailer2.jpg",
                                    name: "Jailer 2",
                                    description: "Drama.Action",
                                    star: "8.5/10",
                                    date: "12-10-23"),
                              ),),
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/ganapath.jpg",
                                    name: "Ganapath ",
                                    description: "Drama.Action",
                                    star: "6/10",
                                    date: "25-10-23"),
                              ),),
                            ],),),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Most Awaited",
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
                        ],
                      ),)),
                Visibility(
                    visible: _isPressedThirller,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
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
                                  "Others ",
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
                          Container(
                            child: Row(children: [
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/Blackpanther2.jpg",
                                    name: "Black panther 2 ",
                                    description: "Drama.Action",
                                    star: "7/10",
                                    date: "12-9-23"),
                              ),),
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/dreamgirl2.jpg",
                                    name: "Dream girl 2",
                                    description: "Drama.Action",
                                    star: "8/10",
                                    date: "1-8-23"),
                              ),),
                            ],),),
                          Container(
                            child: Row(children: [
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/jailer2.jpg",
                                    name: "Jailer 2",
                                    description: "Drama.Action",
                                    star: "8.5/10",
                                    date: "12-10-23"),
                              ),),
                              Expanded(child: Container(
                                width: 247,
                                child: HomeCard(
                                    imgname: "images/ganapath.jpg",
                                    name: "Ganapath ",
                                    description: "Drama.Action",
                                    star: "6/10",
                                    date: "25-10-23"),
                              ),),
                            ],),),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Most Awaited",
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
                        ],
                      ),)),
              ],
            )),
      )
    ));
  }
}
