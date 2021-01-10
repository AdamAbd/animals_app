import 'package:flutter/cupertino.dart';

class AnimalsData {
  String name, image, location, desc, vidUrl;
  List imageList;

  AnimalsData({
    @required this.name,
    @required this.image,
    @required this.location,
    @required this.desc,
    @required this.vidUrl,
    @required this.imageList,
  });
}

var animalList = {
  AnimalsData(
    name: "GAJAH SUMATRA",
    image: "assets/images/gajah.jpg",
    location: "Indonesia, Sumatra, Padang",
    desc:
        "Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, PadangIndonesia, Sumatra, PadangIndonesia, Sumatra, Padang Indonesia, Sumatra, Padang ",
    vidUrl:
        "https://firebasestorage.googleapis.com/v0/b/adamwebporto.appspot.com/o/video%2FScreenrecorder-2018-02-06-18-13-34-379.mp4?alt=media&token=624c61fd-e2ae-4845-8797-18a5e802462e",
    imageList: [
      "assets/images/gajah.jpg",
      "assets/images/gajah.jpg",
      "assets/images/gajah.jpg",
    ],
  ),
  AnimalsData(
    name: "1 GAJAH SUMATRA",
    image: "assets/images/gajah.jpg",
    location: "Indonesia, Sumatra, Padang",
    desc:
        "Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, PadangIndonesia, Sumatra, PadangIndonesia, Sumatra, Padang Indonesia, Sumatra, Padang ",
    vidUrl:
        "https://firebasestorage.googleapis.com/v0/b/adamwebporto.appspot.com/o/video%2FScreenrecorder-2018-02-06-18-13-34-379.mp4?alt=media&token=624c61fd-e2ae-4845-8797-18a5e802462e",
    imageList: [
      "assets/images/gajah.jpg",
      "assets/images/gajah.jpg",
      "assets/images/gajah.jpg",
    ],
  ),
  AnimalsData(
    name: "2 GAJAH SUMATRA",
    image: "assets/images/gajah.jpg",
    location: "Indonesia, Sumatra, Padang",
    desc:
        "Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, PadangIndonesia, Sumatra, PadangIndonesia, Sumatra, Padang Indonesia, Sumatra, Padang ",
    vidUrl:
        "https://firebasestorage.googleapis.com/v0/b/adamwebporto.appspot.com/o/video%2FScreenrecorder-2018-02-06-18-13-34-379.mp4?alt=media&token=624c61fd-e2ae-4845-8797-18a5e802462e",
    imageList: [
      "assets/images/gajah.jpg",
      "assets/images/gajah.jpg",
      "assets/images/gajah.jpg",
    ],
  ),
};
