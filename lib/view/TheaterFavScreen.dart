import 'package:flutter/material.dart';
import 'package:movieticket/view/ThreaterLarge.dart';
class TheaterFavScreen extends StatefulWidget {
  const TheaterFavScreen({Key? key}) : super(key: key);

  @override
  TheaterFavScreenState createState() =>TheaterFavScreenState();
}

class TheaterFavScreenState extends State<TheaterFavScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.green.shade600, Colors.black26])),
      child: Scaffold(
        backgroundColor:Colors.transparent,
        appBar: AppBar(
          backgroundColor: Color(0xff618264).withOpacity(.9),
          title: Text('Favorite Theater'),
          centerTitle: true,
        ),
        body: isthereTheater?ListView.builder(
          itemCount: TheaterfavoriteList.length,
          itemBuilder: (context, index) {
            final movie = TheaterfavoriteList[index];
            return ListTile(
              leading: Image.asset(
                movie.imgname,
                width: 50,
                height: 50,
              ),
              title: Text(movie.name,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 22),),
              subtitle: Text(movie.description,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
              trailing: IconButton(
                icon: Icon(Icons.favorite, color: Colors.red),
                onPressed: () {
                  setState(() {
                    TheaterfavoriteList.removeAt(index);
                  });
                },
              ),
            );
          },
        ):Center(child:Text(" EMPTY",style:TextStyle(fontSize: 30,color: Colors.grey
        ))),
      ),);
  }
}
