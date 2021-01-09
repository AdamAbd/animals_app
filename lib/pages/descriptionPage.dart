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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.0),
                  RichText(
                    text: TextSpan(
                      text: "GAJAH\n",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0,
                      ),
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              bottom: 3.0,
                              right: 2.0,
                            ),
                            child: Icon(Icons.location_on),
                          ),
                        ),
                        TextSpan(
                          text: "animal.location",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    child: Text(
                      "Overview",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Text(
                    "Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, PadangIndonesia, Sumatra, PadangIndonesia, Sumatra, Padang Indonesia, Sumatra, Padang ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    child: Text(
                      "Video of this animal",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200.0,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
