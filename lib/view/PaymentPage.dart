import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  String? imgname;
  String? name;
  String? description;
  String? star;
  String? Selecteddate;

  PaymentPage({
    Key? key,
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: InkWell(
                  onTap: () {
                    // You can add navigation to another page here if needed.
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(121, 172, 120, 0.6),
                          Color.fromRGBO(97, 130, 100, 0.6),
                        ],
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height / 4,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                widget.imgname!, // Provide a valid image asset path
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height / 4,
                            margin: EdgeInsets.only(left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  widget.name!, // Provide a valid name
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "AlegreyaSans",
                                    fontSize: 23,
                                  ),
                                ),
                                Text(
                                  widget.Selecteddate!, // Use Selecteddate property
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "AlegreyaSans",
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  widget.description!, // Provide a valid description
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "AlegreyaSans",
                                    fontSize: 17,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent.shade200,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      widget.star!, // Use widget.star to access the star property
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "AlegreyaSans",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
