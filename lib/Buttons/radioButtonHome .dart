import 'package:flutter/material.dart';
import 'package:flutter_application_1/Buttons/radiobutton.dart';

class RadiobuttonDemo extends StatefulWidget {
  final String title;
  const RadiobuttonDemo({Key? key, required this.title}) : super(key: key);

  @override
  State<RadiobuttonDemo> createState() => _RadiobuttonDemoState();
}

class _RadiobuttonDemoState extends State<RadiobuttonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        // color: Colors.red,
        child: Column(
          children: [
            // DropdownMenuButton(),
            SizedBox(height: 10),
            Text(
              "Vertical",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            CustomReadioButton(),
            Divider(
              thickness: 1,
            ),
            SizedBox(height: 10),
            Text(
              "Horizontal",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            CustomRadioButtonHorizontal(),
          ],
        ),
      ),
    );
  }
}
