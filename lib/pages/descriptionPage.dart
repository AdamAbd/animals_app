import 'package:flutter/material.dart';

import 'package:animals_app/widgets/chewie.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:animals_app/model/animals_data.dart';
import 'package:animals_app/widgets/buttonFav.dart';

class DescriptionPage extends StatefulWidget {
  final AnimalsData animals;

  DescriptionPage(this.animals);

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
              // Tinggi AppBar saat expand
              expandedHeight: 250.0,
              // Bagian yang fleksibel pada sliver AppBar
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
              // Utk menampilkan widget di kanan (bisa banyak widget)
              actions: [ButtonFavorite()],
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
                      Container(
                        margin: EdgeInsets.only(top: 18.0),
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.0,
                          vertical: 8.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 2.0,
                                right: 5.0,
                              ),
                              child: const Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                widget.animals.location,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14.0),
                        child: const Text(
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
                        child: const Text(
                          "Gallery of this animal",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Chewie (Video Player Custom) Placeholder
                SizedBox(
                  height: 200,
                  child: ChewieItem(
                    // Set Video URL
                    vidUrl: widget.animals.vidUrl,
                    // Set lopping video
                    looping: true,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14.0, bottom: 80.0),
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(right: 16.0),
                    // Menampilkan list data image dari data animals
                    children: widget.animals.imageList
                        .map(
                          (images) => Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            // Digunakan utk membuat rounded corner
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
      // FAB dengan icon + label
      floatingActionButton: FloatingActionButton.extended(
        // Func utk launch any link
        onPressed: () => launch(
          widget.animals.donateLink,
        ),
        icon: Icon(Icons.money),
        label: Text("DONATE", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
