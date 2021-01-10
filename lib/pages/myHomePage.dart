import 'package:animals_app/model/animals_data.dart';
import 'package:animals_app/widgets/customCard.dart';
import 'package:flutter/material.dart';

import 'descriptionPage.dart';
import 'settingPage.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Custom title
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hello,",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 36.0,
                        ),
                      ),
                      const Text(
                        "Animal Lovers",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36.0,
                          height: 0.9,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(
                        Icons.settings,
                        size: 30.0,
                      ),
                      onPressed: () {
                        // Saat button ditekan, akan diarahkan ke setting
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SettingPage();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // Untuk mendapatkan tinggi layar, dikurang tinggi custom title
            height: MediaQuery.of(context).size.height - 126.0,
            child: ListView(
              children: animalList
                  .map(
                    (animals) => Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: FlatButton(
                        onPressed: () {
                          // Saat button ditekan, akan diarahkan ke Deskripsi
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DescriptionPage(animals);
                              },
                            ),
                          );
                        },
                        // cCard Placeholder
                        child: CustomCard(animals),
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
