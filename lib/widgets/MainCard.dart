// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
class homeCard extends StatefulWidget {
  final String imgname;
  final String name;
  final String description;
  final String star;
    homeCard({required this.imgname,
      required this.name,
      required this.description,
      required this.star,});

  @override
  State<homeCard> createState() => homeCardState();
}

class homeCardState extends State<homeCard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(121, 172, 120, .4),
                    Color.fromRGBO(97, 130, 100, .4),
                  ])),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    height:MediaQuery.of(context).size.height/4,
                    margin: EdgeInsets.only(left: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 23),
                        ),
                        Text(
                          "(12-9-23)",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Text(
                          " Adventure . Drama",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ), //year
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent.shade200,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              '7/10',
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
