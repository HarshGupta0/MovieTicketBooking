import 'package:flutter/material.dart';
import 'package:movieticket/view/ThreaterLarge.dart';
class Theater extends StatefulWidget {
  final String imgname;
  final String name;
  final String description;
  final String star;
  final String date;
  Theater({
    Key? key,
    required this.imgname,
    required this.name,
    required this.description,
    required this.star,
    required this.date,
  }) : super(key: key);


  @override
  State<Theater> createState() => _TheaterState();
}

class _TheaterState extends State<Theater> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ThEnlarge(
                    imgname: widget.imgname,
                    name: widget.name,
                    description: widget.description,
                    star: widget.star,
                    date: widget.date)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        margin: EdgeInsets.all(15),
        child: Stack(
          children: [
            ClipRRect(
              child: Image.asset(
                widget.imgname,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 280,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(.5)),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          widget.description,
                          style: TextStyle(
                              fontFamily: "AlegreyaSans",
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.date,
                          style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold, fontFamily: "AlegreyaSans",),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.black.withOpacity(.5),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "AlegreyaSans",
                              fontSize: 18),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent.shade200,
                        ),
                        Text(
                          widget.star,
                          style: TextStyle(
                              fontFamily: "AlegreyaSans",
                              color: Colors.white, fontWeight: FontWeight.bold),
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
    );
  }
}
