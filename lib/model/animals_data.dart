import 'package:flutter/cupertino.dart';

class AnimalsData {
  String name, image, location, desc;
  List imageList;

  AnimalsData({
    @required this.name,
    @required this.image,
    @required this.location,
    @required this.desc,
    @required this.imageList,
  });
}

var animalList = {
  AnimalsData(
    name: "GAJAH SUMATRA",
    image: "assets/gajah.jpg",
    location: "Indonesia, Sumatra, Padang",
    desc:
        "Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, PadangIndonesia, Sumatra, PadangIndonesia, Sumatra, Padang Indonesia, Sumatra, Padang ",
    imageList: ["assets/gajah.jpg", "assets/gajah.jpg", "assets/gajah.jpg"],
  ),
  AnimalsData(
    name: "1 GAJAH SUMATRA",
    image: "assets/gajah.jpg",
    location: "Indonesia, Sumatra, Padang",
    desc:
        "Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, PadangIndonesia, Sumatra, PadangIndonesia, Sumatra, Padang Indonesia, Sumatra, Padang ",
    imageList: ["assets/gajah.jpg", "assets/gajah.jpg", "assets/gajah.jpg"],
  ),
  AnimalsData(
    name: "2 GAJAH SUMATRA",
    image: "assets/gajah.jpg",
    location: "Indonesia, Sumatra, Padang",
    desc:
        "Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, PadangIndonesia, Sumatra, PadangIndonesia, Sumatra, Padang Indonesia, Sumatra, Padang ",
    imageList: ["assets/gajah.jpg", "assets/gajah.jpg", "assets/gajah.jpg"],
  ),
};
