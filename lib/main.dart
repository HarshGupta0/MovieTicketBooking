import 'package:flutter/material.dart';
import 'package:movieticket/effects/SplashScreen.dart';
import 'package:movieticket/view/PaymentPage.dart';
import 'package:movieticket/view/nav.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showingSplash=true;
  LoadHome(){
    Future.delayed(Duration(seconds: 5),(){
      setState(() {
        showingSplash=false;
      });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    LoadHome();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/PaymentPage':(context)=>PaymentPage(),
      },
      debugShowCheckedModeBanner: false,
      home:showingSplash ? SplashScreen() :NavigationMenu(),
    );
  }
}
