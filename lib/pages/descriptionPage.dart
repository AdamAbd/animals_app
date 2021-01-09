import 'package:flutter/material.dart';

class DescriptionPage extends StatefulWidget {
  @override
  _DescriptionPageState createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              expandedHeight: 250.0,
              title: IconButton(
                icon: Icon(Icons.arrow_back),
                padding: const EdgeInsets.only(right: 30.0),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "GAJAH",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                background: Image.asset(
                  "assets/gajah.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Scrollbar(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
