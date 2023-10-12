import 'package:flutter/material.dart';
import 'package:movieticket/view/Cinemas.dart';
import 'package:movieticket/view/coming_soon.dart';
import 'dart:math';

import 'package:movieticket/view/home.dart';
import 'package:movieticket/view/more.dart';
getRandomColor() => [
  Colors.blueAccent,
  Colors.redAccent,
  Colors.greenAccent,
][Random().nextInt(3)];

// Container(
// decoration: BoxDecoration(
// gradient: LinearGradient(
// begin: Alignment.topLeft,
// end: Alignment.bottomRight,
// colors: [Colors.purple, Colors.orange]
// )
// ),
