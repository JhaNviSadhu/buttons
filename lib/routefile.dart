import 'package:flutter/material.dart';
import 'package:flutter_application_1/Buttons/checkboxbutton.dart';
import 'package:flutter_application_1/Buttons/elevatedButtonDemo.dart';
import 'package:flutter_application_1/Buttons/floatingActionButton.dart';
import 'package:flutter_application_1/Buttons/radioButtonHome%20.dart';

import 'Buttons/menubutton.dart';

class RouteFile extends StatefulWidget {
  const RouteFile({Key? key}) : super(key: key);

  @override
  _RouteFileState createState() => _RouteFileState();
}

List<String> buttonName = [
  "DroupDown Menu",
  "Radio Button",
  "Elevated button",
  "Floating Action Button",
  "Checkbox",
];

List<Widget> ontap = [
  DropdownMenuButton(
    title: buttonName[0],
  ),
  RadiobuttonDemo(
    title: buttonName[1],
  ),
  ElevatedButtonDemo(
    title: buttonName[2],
  ),
  FloatingActionButtonDemo(
    title: buttonName[3],
  ),
  CustomCheckboxHome(
    title: buttonName[4],
  ),
];

class _RouteFileState extends State<RouteFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
            itemCount: buttonName.length,
            itemBuilder: (BuildContext context, int index) {
              return ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ontap[index],
                  ),
                ),
                child: Text(buttonName[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}
