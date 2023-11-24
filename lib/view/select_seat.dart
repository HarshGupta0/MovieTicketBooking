import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class TheaterScreen extends StatefulWidget {
  String? imgname;
  String? name;
  String? description;
  String? star;
  String? selectedDate;

  TheaterScreen({
    Key? key,
    this.imgname,
    this.name,
    this.description,
    this.star,
    this.selectedDate,
  }) : super(key: key);

  @override
  State<TheaterScreen> createState() =>TheaterScreenState();
}

class TheaterScreenState extends State<TheaterScreen> {
  List<String> selectedSeats = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff618264).withOpacity(.9),
        title: Text('Theater Screen'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 9, // Adjust as per your seating arrangement
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: 90, // Total number of seats
          itemBuilder: (context, index) {
            final seatNumber = index + 1;
            final isSeatSelected = selectedSeats.contains(seatNumber.toString());

            return GestureDetector(
              onTap: () {
                setState(() {
                  if (isSeatSelected) {
                    selectedSeats.remove(seatNumber.toString());

                  } else {
                    selectedSeats.add(seatNumber.toString());
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isSeatSelected ? Colors.red : Colors.green,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Text(
                    seatNumber.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green.shade200,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle the selected seats
                  print('Selected Seats: $selectedSeats');
                  Fluttertoast.showToast(
                    msg: 'Seats booked: ${selectedSeats.join(', ')}',
                  );
                },
                child: Text('Book Selected Seats'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff618264).withOpacity(.9),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
