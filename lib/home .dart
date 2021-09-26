import 'package:flutter/material.dart';
import 'package:flutter_application_1/menubutton.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MenuButton(),
    );
  }
}
