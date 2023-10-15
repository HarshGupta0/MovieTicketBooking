import 'package:flutter/material.dart';
import 'package:movieticket/model/FavoriteModel.dart';
class favScreen extends StatefulWidget {
  final List fav;
  favScreen({
    Key? key, // Use Key as a parameter if you want to provide a key
    required this.fav,

  }) : super(key: key);

  @override
  State<favScreen> createState() => _favScreenState();
}

class _favScreenState extends State<favScreen> {
  @override
  Widget build(BuildContext context) {
    final items = ModalRoute.of(context)?.settings.arguments as favorite;
    return ListView.builder(
      itemCount:items.fav.length,
      itemBuilder: (context, index) {
        final product =items.fav[index];
        return ListTile(
          title: Text(product.name),
          subtitle: Text('$product'),
          trailing: IconButton(
            icon: Icon(product.isFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              // Toggle the favorite state when the icon is tapped
              product.isFavorite = !product.isFavorite;
            },
          ),
        );
      },
    );
  }
}

