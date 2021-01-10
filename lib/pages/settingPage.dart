import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 29.0,
                bottom: 14.0,
                left: 14.0,
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    padding: const EdgeInsets.only(right: 30.0),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Setting",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: ListTile(
                leading: Switch(
                  value: lightOn,
                  onChanged: (value) {
                    setState(() {
                      lightOn = true;
                    });
                  },
                ),
                title: Text(
                  "Dark Mode",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              child: ExpansionTile(
                leading: Icon(Icons.group),
                title: const Text("About Us"),
                children: [
                  const Text(
                    "Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, PadangIndonesia, Sumatra, PadangIndonesia, Sumatra, Padang Indonesia, Sumatra, Padang ",
                  ),
                ],
                childrenPadding: EdgeInsets.all(14.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
