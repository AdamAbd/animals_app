import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:animals_app/widgets/chewie.dart';

import 'package:animals_app/model/animals_data.dart';

class DescriptionPage extends StatefulWidget {
  final AnimalsData animals;

  DescriptionPage({@required this.animals});

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
                widget.animals.name,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  widget.animals.image,
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
                          text: "${widget.animals.name}\n",
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
                              text: widget.animals.location,
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
                        widget.animals.desc,
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
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  child: ChewieItem(
                    videoPlayerController: VideoPlayerController.network(
                        "https://firebasestorage.googleapis.com/v0/b/adamwebporto.appspot.com/o/video%2FScreenrecorder-2018-02-06-18-13-34-379.mp4?alt=media&token=624c61fd-e2ae-4845-8797-18a5e802462e"),
                    looping: true,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 14.0),
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: widget.animals.imageList
                        .map(
                          (images) => Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Container(
                              height: 200,
                              color: Colors.blue,
                              child: Image.asset(
                                images,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                        .toList(),
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
