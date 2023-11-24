import 'package:flutter/material.dart';
import 'package:movieticket/model/DateAndTimeModel.dart';
import 'package:movieticket/view/select_seat.dart';

class PaymentPage extends StatefulWidget {
  String? imgname;
  String? name;
  String? description;
  String? star;
  String? selectedDate;

  PaymentPage({
    Key? key,
    this.imgname,
    this.name,
    this.description,
    this.star,
    this.selectedDate,
  }) : super(key: key);

  @override
  State<PaymentPage> createState() => PaymentPageState();
}

class PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)?.settings.arguments as Dateandtime;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.green.shade600, Colors.black26],
          ),
        ),
        child: Scaffold(
         bottomNavigationBar:BottomAppBar(
           height: 60,
           color:Color(0xff618264).withOpacity(.9), // Background color of the bottom navigation bar
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               // Price display
               Text(
                 'Total Price X 1: ₹180',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 16,
                 ),
               ),
               // Proceed button
               ElevatedButton(
                 onPressed: () {
                   // Add your action when the "Proceed" button is pressed.
                   Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>TheaterScreen()));
                 },
                 child: Text('Book Now'),
                 style: ElevatedButton.styleFrom(
                   primary: Colors.green, // Background color of the button
                 ),
               ),
             ],
           ),
         ),
          backgroundColor: Colors.transparent,
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 1),
                        spreadRadius:2*.8,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  margin: EdgeInsets.only(top: 40,left: 28,right: 28),
                  height: MediaQuery.of(context).size.height / 2 * 0.8,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset('${item.imgname}', fit: BoxFit.fill),
                  ),
                ),
                SizedBox(height: 30,),
                Text('INFORMATION:-',style: TextStyle(color:Color(0xff618264),fontWeight: FontWeight.bold,fontSize: 28)),
                SizedBox(height: MediaQuery.of(context).size.height/3*.1,),
                Text('Date: ${item.date}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25)),
                SizedBox(height: 20,),
                Text('Time: ${item.time}',  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25)),
                SizedBox(height: 20,),
                Text('Location: ${item.location}',  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25)),
                SizedBox(height: 30,),
                BackButton(
                  color:Color(0xff618264),
                  onPressed: (){Navigator.pop(context);},)
              ],
            ),
          ),
        ),
      ),
    );
  }
}