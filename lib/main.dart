import 'package:flutter/material.dart';

import 'pages/homeSkeleton_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hilmihisham',
      home: Home(title: 'hilmihisham'),
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   primarySwatch: Colors.blue,
      // ),
    );
  }
}
