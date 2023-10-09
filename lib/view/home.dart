import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieticket/effects/glitch.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar:  AppBar(
        title:  GlithEffect(child: Text("Now Showing"),),
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search,size: 25,),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.message),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          //IconButton
        ], //<Widget>[]
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
          body:Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  
                ],
              ),
            ),
          ),

    ));
  }
}
