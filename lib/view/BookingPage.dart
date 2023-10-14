import 'package:flutter/material.dart';
import 'package:movieticket/model/DateAndTimeModel.dart';
import 'package:movieticket/widgets/BookingCardItem.dart';

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
        appBar: AppBar(
         backgroundColor: Color(0xff618264).withOpacity(.9),
          title: Text("Book Now"),
          centerTitle: true,
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 35,left: 30,right: 30,bottom: 35),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(
                    widget.imgname,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Center(child:Text(widget.name,style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),) ,),
              SizedBox(height: 20,),
              BookingCardItem(imgname: widget.imgname, time:"12:40pm", loction:" Ghaziabad , Fun", date:"25-10-10"),
              BookingCardItem(imgname: widget.imgname, time:"1:15 pm", loction:"Lucknnow , Inox", date:"27-10-10"),
              BookingCardItem(imgname: widget.imgname, time:"2:45pm", loction:" Delhi, PVR", date:"26-10-10"),
              BookingCardItem(imgname: widget.imgname, time:"3:00pm", loction:"Greater Noida , Fun", date:"28-10-10"),
              BookingCardItem(imgname: widget.imgname, time:"12:40pm", loction:"Pune , Pvr", date:"30-10-10"),
              BookingCardItem(imgname: widget.imgname, time:"10:00am", loction:" Mumbai , Inox", date:"18-10-10"),
              SizedBox(height: 25,),
              Center(child: Text("No MORE SHOWS",style: TextStyle(color: Colors.grey),),),
              SizedBox(height: 25,),
            ],
          ),
        ),
      ),
    ));
  }
}
