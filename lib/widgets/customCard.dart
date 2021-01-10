import 'package:flutter/material.dart';

import 'package:animals_app/model/animals_data.dart';

class CustomCard extends StatelessWidget {
  final AnimalsData animals;

  CustomCard({@required this.animals});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Image.asset(
              animals.image,
              height: 320,
              width: 320,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
            ),
            child: Text(
              animals.name,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
