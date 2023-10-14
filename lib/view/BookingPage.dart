import 'package:flutter/material.dart';
import 'package:movieticket/model/DateAndTimeModel.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/PaymentPage',arguments: Dateandtime("25-10-23","12:40","Lucknow, Inox"));
                  },
                  child: Row(
                    children: [
                      Text(" 25-10-23"),
                      Text("12:40"),
                      Text("Lucknow, Inox"),
                    ],
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
