import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:dynamic_theme/dynamic_theme.dart';

import 'pages/myHomePage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// Set Device orientation dengan [SystemChrome]
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Set Theme saat func [changeBrightness] berubah
    return DynamicTheme(
        defaultBrightness: Brightness.dark,
        data: (brightness) => ThemeData(
              primarySwatch: Colors.indigo,
              brightness: brightness,
            ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            title: 'Animals App',
            theme: theme,
            home: MyHomePage(),
          );
        });
  }
}
