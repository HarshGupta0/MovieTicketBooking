import 'package:flutter/material.dart';
import 'package:movieticket/model/DateAndTimeModel.dart';

class PaymentPage extends StatefulWidget {
  String? imgname;
  String? name;
  String? description;
  String? star;
  String? Selecteddate;

  PaymentPage({
    Key? key, // Use Key as a parameter if you want to provide a key
    this.imgname,
    this.name,
    this.description,
    this.star,
    this.Selecteddate,
  }) : super(key: key);

  @override
  State<PaymentPage> createState() => PaymentPageState();
}

class PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)?.settings.arguments as Dateandtime;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text('Date: ${item.date}'),
              Text('Time: ${item.time}'),
              Text('Lacation: ${item.loacation}'),
            ],
          ),
        ),
      ),
    );
  }
}
