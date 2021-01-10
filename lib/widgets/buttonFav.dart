import 'package:flutter/material.dart';

class ButtonFavorite extends StatefulWidget {
  @override
  _ButtonFavoriteState createState() => _ButtonFavoriteState();
}

class _ButtonFavoriteState extends State<ButtonFavorite> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.favorite,
        color: isFavorite ? Colors.red : Colors.white,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
