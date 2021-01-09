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
              backgroundColor: Colors.green[500],
              pinned: true,
              expandedHeight: 250.0,
              title: Text(
                "GAJAH",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/gajah.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
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
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 14.0),
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 14.0),
                      Container(
                        width: 330,
                        height: 200,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 200.0,
                        height: 200,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
