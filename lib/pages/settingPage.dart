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
              padding: const EdgeInsets.only(top: 29.0, left: 14),
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
            SizedBox(height: 14.0),
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
              child: ListTile(
                title: Text("About Us"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
