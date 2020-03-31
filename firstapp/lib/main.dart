import 'package:flutter/material.dart';
import 'package:firstapp/launcher/launcher_view.dart';
import 'package:firstapp/constant.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek',
      theme: ThemeData(
        // primarySwatch: GojekPalette.green,
        // accentColor: GojekPalette.green,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: new LauncherPage(),
    );
  }
}
