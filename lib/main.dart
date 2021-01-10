import 'package:flutter/material.dart';

import 'package:dynamic_theme/dynamic_theme.dart';

import 'pages/myHomePage.dart';
import 'pages/descriptionPage.dart';
import 'pages/settingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.dark,
        data: (brightness) => ThemeData(
              primarySwatch: Colors.indigo,
              brightness: brightness,
            ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: theme,
            home: MyHomePage(),
          );
        });
  }
}
