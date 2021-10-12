import 'package:flutter/material.dart';
import 'package:flutter_application_1/reactionbutton/reaction.dart';
import 'package:flutter_application_1/routefile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        primarySwatch: Colors.blue,
      ),
      home: RouteFile(),
    );
  }
}
