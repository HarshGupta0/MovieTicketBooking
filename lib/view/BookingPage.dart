import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  final String imgname;
  final String name;
  final String description;
  final String star;
  final String date;

  BookingPage({
    Key? key, // Use Key as a parameter if you want to provide a key
    required this.imgname,
    required this.name,
    required this.description,
    required this.star,
    required this.date,
  }) : super(key: key);

  @override
  State<BookingPage> createState() => BookingPageState();
}

class BookingPageState extends State<BookingPage> {
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
            body:SingleChildScrollView(
              child:Column(
                children: [

                ],
              ),
            ),
          ),
        )
    );
  }
}
