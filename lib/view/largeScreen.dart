import 'package:flutter/material.dart';

class Enlarge extends StatefulWidget {
  final String imgname;
  final String name;
  final String description;
  final String star;
  final String date;

  Enlarge({
    Key? key, // Use Key as a parameter if you want to provide a key
    required this.imgname,
    required this.name,
    required this.description,
    required this.star,
    required this.date,
  }) : super(key: key);

  @override
  State<Enlarge> createState() => _EnlargeState();
}

class _EnlargeState extends State<Enlarge> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.green.shade600, Colors.black26])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 2,
                    child: ClipRRect(
                      child: Image.asset(
                        widget.imgname,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      " About Movie :",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 33,
                          wordSpacing: 2,
                          letterSpacing: 2),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      widget.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 25,
                          wordSpacing: 2,
                          letterSpacing: 2),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      widget.description,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 25,
                          wordSpacing: 2,
                          letterSpacing: 2),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      widget.date,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 25,
                          wordSpacing: 2,
                          letterSpacing: 2),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent.shade200,
                        size: 35,
                      ),
                      SizedBox(width: 5),
                      Text(
                        widget.star, // Use widget.star to access the star property
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),
                      ),
                    ],
                  ),),
                  SizedBox(height: 40,),
                  ElevatedButton(onPressed: (){}, child:Text("Book Now"),),
                  SizedBox(height: 20,),
                  BackButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
