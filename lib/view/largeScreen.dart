import 'package:flutter/material.dart';
import 'package:movieticket/model/FavoriteModel.dart';
import 'package:movieticket/view/BookingPage.dart';
List<favorite> favoriteList=[];
bool isthere=false;
class Enlarge extends StatefulWidget {
  final String imgname;
  final String name;
  final String description;
  final String star;
  final String date;

  Enlarge({
    Key? key,
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
                      " About Movie :",
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    onPressed: (){
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Colors.green.shade600, Colors.black26])),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  title: Text('Languages :-',style: TextStyle(color:Colors.black,fontSize: 23,),),
                                  onTap: () {
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>BookingPage(imgname: widget.imgname, name: widget.name, description: widget.description, star: widget.star, date: widget.date)));
                                  },
                                ),
                                ListTile(
                                  title: Text('English',style: TextStyle(color:Colors.white,fontSize: 20),),
                                  onTap: () {
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>BookingPage(imgname: widget.imgname, name: widget.name, description: widget.description, star: widget.star, date: widget.date)));
                                  },
                                ),
                                ListTile(
                                  title: Text('Hindi',style: TextStyle(color:Colors.white,fontSize: 20)),
                                  onTap: () {
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>BookingPage(imgname: widget.imgname, name: widget.name, description: widget.description, star: widget.star, date: widget.date)));
                                  },
                                ),
                                ListTile(
                                  title: Text('Tamil',style: TextStyle(color:Colors.white,fontSize: 20)),
                                  onTap: () {
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>BookingPage(imgname: widget.imgname, name: widget.name, description: widget.description, star: widget.star, date: widget.date)));
                                  },
                                ),
                                ListTile(
                                  title: Text('Telugu',style: TextStyle(color:Colors.white,fontSize: 20)),
                                  onTap: () {
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>BookingPage(imgname: widget.imgname, name: widget.name, description: widget.description, star: widget.star, date: widget.date)));
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                  }, child:Text("Proceed"),),

                  IconButton(onPressed: (){
                    setState(() {
                      isLiked=!isLiked;
                      isthere=true;
                      if(isLiked==true){
                        favoriteList.add(favorite(widget.imgname, widget.name, widget.description, isLiked, widget.date,widget.star));
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