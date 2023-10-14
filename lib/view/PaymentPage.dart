import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  final String imgname;
  final String name;
  final String description;
  final String star;
  final String Selecteddate;

  PaymentPage({
    Key? key, // Use Key as a parameter if you want to provide a key
    required this.imgname,
    required this.name,
    required this.description,
    required this.star,
    required this.Selecteddate,
  }) : super(key: key);

  @override
  State<PaymentPage> createState() => PaymentPageState();
}

class PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

      ),
    );
  }
}
