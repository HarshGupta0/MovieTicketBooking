import 'package:flutter/material.dart';
import 'package:movieticket/view/largeScreen.dart';

class HomeCard extends StatefulWidget {
  final String imgname;
  final String name;
  final String description;
  final String star;
  final String date;

  HomeCard({
    Key? key, // Use Key as a parameter if you want to provide a key
    required this.imgname,
    required this.name,
    required this.description,
    required this.star,
    required this.date,
  }) : super(key: key); // Provide the key here

  @override
  State<HomeCard> createState() => HomeCardState();
}

class HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Enlarge(
                        imgname: widget.imgname,
                        name: widget.name,
                        date: widget.date,
                        description: widget.description,
                        star: widget.star,
                      )));
        },
        child: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(121, 172, 120, .6),
                Color.fromRGBO(97, 130, 100, .6),
              ],
            ),
          ),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                height: MediaQuery.of(context).size.height / 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    widget.imgname, // Provide a valid image asset path
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  margin: EdgeInsets.only(left: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.name, // Provide a valid name
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "AlegreyaSans",
                          fontSize: 23,
                        ),
                      ),
                      Text(
                        widget.date,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "AlegreyaSans",
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        widget.description,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "AlegreyaSans",
                          fontSize: 17,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orangeAccent.shade200,
                          ),
                          SizedBox(width: 5),
                          Text(
                            widget
                                .star, // Use widget.star to access the star property
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "AlegreyaSans",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
