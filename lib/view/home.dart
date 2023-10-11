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
              colors: [Colors.green.shade600,Colors.black26])),
      //     decoration: BoxDecoration(
      //         gradient: LinearGradient(
      //             // begin: Alignment.topLeft,
      //             // end: Alignment.bottomRight,
      //             colors: [Color(0xff0e1c26),Color(0xff2a454b),Color(0xff294861)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar:AppBar(
          backgroundColor: Colors.black.withOpacity(.8),
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
        drawer:drawer(),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                InputText(MylableText: "Find Movie"),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("New Movies",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
                    TextButton(onPressed: (){}, child:Text("See More",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),))
                  ],),),
                SizedBox(height: 10,),
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
                    autoPlay: true,
                    aspectRatio: 15 / 20,
                    autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 200),

                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
                      TextButton(onPressed: (){}, child:Text("See More",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),))
                    ],),),
                SizedBox(height: 10,),

              ],
            ),
          ),
        ),
      ),
    ));
  }
}
