import 'package:flutter/material.dart';
import 'package:movieticket/model/TheaterFavModel.dart';
List<Theaterfavorite> TheaterfavoriteList=[];
bool isthereTheater=false;
class ThEnlarge extends StatefulWidget {
  final String imgname;
  final String name;
  final String description;
  final String star;
  final String date;

  ThEnlarge({
    Key? key, // Use Key as a parameter if you want to provide a key
    required this.imgname,
    required this.name,
    required this.description,
    required this.star,
    required this.date,
  }) : super(key: key);

  @override
  State<ThEnlarge> createState() => _ThEnlargeState();
}

class _ThEnlargeState extends State<ThEnlarge> {
  bool isLiked=false;
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
                      " About Theater :",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "AlegreyaSans",
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
                          fontFamily: "AlegreyaSans",
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
                          fontFamily: "AlegreyaSans",
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
                          fontFamily: "AlegreyaSans",
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
                            fontFamily: "AlegreyaSans",
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                    ],
                  ),),
                  IconButton(onPressed: (){
                    setState(() {
                      isLiked=!isLiked;
                      isthereTheater=true;
                      if(isLiked==true){
                        TheaterfavoriteList.add(Theaterfavorite(widget.imgname, widget.name, widget.description, isLiked, widget.date,widget.star));
                      }
                    });
                  },
                    icon:isLiked?Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite,color: Colors.grey,),
                  ),
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
