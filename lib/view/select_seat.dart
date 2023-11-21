import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class SelectSeat extends StatefulWidget {
  const SelectSeat({Key? key}) : super(key: key);

  @override
  _SelectSeatState createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  List<String> selectedSeats = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Seat'),
        actions: [
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () {
              // Handle the selected seats
              print('Selected Seats: $selectedSeats');
              Fluttertoast.showToast(msg: 'Seats booked: ${selectedSeats.join(', ')}');
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, // Adjust as per your seating arrangement
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: 30, // Total number of seats
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
              color: isSeatSelected ? Colors.red : Colors.green,
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
    );
  }
}
