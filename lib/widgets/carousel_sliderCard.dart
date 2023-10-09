import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  String? imgname;
  String? moviename;
  String? no_star;
  CarouselCard(
      {Key? key,
      required this.imgname,
      required this.moviename,
      required this.no_star})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(15),
      child: Stack(
        children: [
          ClipRRect(
            child: Image.asset(
              'images/$imgname',
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
              decoration: BoxDecoration(color: Colors.black26),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                "$moviename",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
                color: Colors.black26,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent.shade200,
                  ),
                  Text(
                    '$no_star',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
