import 'package:flutter/material.dart';
import 'package:movieticket/view/largeScreen.dart';

class CarouselCard extends StatelessWidget {
  final String imgname;
  final String name;
  final String description;
  final String star;
  final String date;
  CarouselCard({
    Key? key,
    required this.imgname,
    required this.name,
    required this.description,
    required this.star,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Enlarge(
                    imgname: imgname,
                    name: name,
                    description: description,
                    star: star,
                    date: date)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(15),
        child: Stack(
          children: [
            ClipRRect(
              child: Image.asset(
                '$imgname',
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
                          "$description",
                          style: TextStyle(
                            fontFamily: "AlegreyaSans",
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "$date",
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
                          '$name',
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
                          '$star',
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
