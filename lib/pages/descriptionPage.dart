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
              pinned: true,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  widget.animals.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
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
                      Container(
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        ),
                        child: RichText(
                          text: TextSpan(
                            text: "",
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 1.0,
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
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14.0),
                        child: Text(
                          "Overview",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Text(
                        widget.animals.desc,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14.0),
                        child: Text(
                          "Video of this animal",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ChewieItem(
                    videoPlayerController: VideoPlayerController.network(
                      widget.animals.vidUrl,
                    ),
                    looping: true,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 14.0),
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(right: 16.0),
                    children: widget.animals.imageList
                        .map(
                          (images) => Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                images,
                                height: 200,
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
