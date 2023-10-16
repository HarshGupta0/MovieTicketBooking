import 'package:flutter/material.dart';
import 'largeScreen.dart';
class FavScreen extends StatefulWidget {
  const FavScreen({Key? key}) : super(key: key);

  @override
  FavScreenState createState() => FavScreenState();
}

class FavScreenState extends State<FavScreen> {
  bool isthere=false;
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
        title: Text('Favorite Movies'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: favoriteList.length,
        itemBuilder: (context, index) {
          final movie = favoriteList[index];
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
                // Handle the removal of the movie from favorites here
                setState(() {
                  favoriteList.removeAt(index);
                });
              },
            ),
          );
        },
      ),
    ),);
  }
}
