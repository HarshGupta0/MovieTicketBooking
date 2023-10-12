import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cinemas extends StatefulWidget {
  const Cinemas({super.key});

  @override
  State<Cinemas> createState() => _CinemasState();
}

class _CinemasState extends State<Cinemas> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(),));
  }
}
