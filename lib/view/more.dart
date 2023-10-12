import 'package:flutter/material.dart';
class more extends StatefulWidget {
  more({super.key});

  @override
  State<more> createState() => moreState();
}

class moreState extends State<more> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(),));
  }
}
