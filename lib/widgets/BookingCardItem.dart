import 'package:flutter/material.dart';
import 'package:movieticket/model/DateAndTimeModel.dart';
class BookingCardItem extends StatefulWidget {
  final String imgname;
  final String time;
  final String loction;
  final String date;

  BookingCardItem({
    Key? key, // Use Key as a parameter if you want to provide a key
    required this.imgname,
    required this.time,
    required this.loction,
    required this.date,
  }) : super(key: key);

  @override
  State<BookingCardItem> createState() => _BookingCardItemState();
}

class _BookingCardItemState extends State<BookingCardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.green.shade600, Colors.black26])),
      child: OutlinedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/PaymentPage',
                arguments: Dateandtime(
                    widget.date, widget.time, widget.loction,widget.imgname));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                    child: ClipRRect(
                      child: Image.asset(widget.imgname),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
              widget.date,
                    style:
                    TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                  Text( widget.time,style:
                  TextStyle(color: Colors.grey, fontSize: 17),),
                  Text(widget.loction,style:
                  TextStyle(color: Colors.grey, fontSize: 17),),
                ],
              ),
              Icon(Icons.arrow_forward_ios_sharp,size: 35,color: Colors.grey,)
            ],
          )),
    );
  }
}
