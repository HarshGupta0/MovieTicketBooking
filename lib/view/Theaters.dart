import 'package:flutter/material.dart';
import 'package:movieticket/widgets/ThCarouselCard.dart';
import 'package:movieticket/widgets/carousel_sliderCard.dart';

class Theaters extends StatefulWidget {
  const Theaters({Key ,key});

  @override
  State<Theaters> createState() => TheatersState();
}

class TheatersState extends State<Theaters> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.green.shade600, Colors.black26])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("All Theaters"),
          centerTitle: true,
          backgroundColor: Color(0xff618264).withOpacity(.9),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: ThCarouselCard(
                  imgname: "images/T1.jpg",
                  name: "PVR",
                  description: "Ghaziabad",
                  star: "7.5/10",
                  date: "5 KM",
                ),
              ),
              Container(
                child: ThCarouselCard(
                  imgname: "images/T2.webp",
                  name: "INOX",
                  description: " Nodia ",
                  star: "9/10",
                  date: "2 KM",
                ),
              ),
              Container(
                child: ThCarouselCard(
                  imgname: "images/T4.jpg",
                  name: "Fun Cinimas",
                  description: "Vaishali ",
                  star: "7/10",
                  date: "7 KM",
                ),
              ),
              Container(
                child: ThCarouselCard(
                  imgname: "images/T5.jpg",
                  name: "PVR",
                  description: "Greater Noida",
                  star: "7.5/10",
                  date: "11 Km",
                ),
              ),
              Container(
                child: ThCarouselCard(
                  imgname: "images/T6.webp",
                  name: "FUN Cinimas",
                  description: "Ghaziabad",
                  star: "7.5/10",
                  date: "12 KM",
                ),
              ),
              Container(
                child: ThCarouselCard(
                  imgname: "images/T7.webp",
                  name: "INOX",
                  description: "Karol Bagh",
                  star: "7.5/10",
                  date: "15 Km",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
