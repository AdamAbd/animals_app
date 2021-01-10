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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 36.0,
                        ),
                      ),
                      Text(
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
            height: MediaQuery.of(context).size.height - 126.0,
            child: ListView(
              children: animalList
                  .map(
                    (animals) => Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DescriptionPage(animals: animals);
                              },
                            ),
                          );
                        },
                        child: CustomCard(animals: animals),
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
