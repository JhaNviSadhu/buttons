import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class CustomCheckboxHome extends StatefulWidget {
  final String title;

  const CustomCheckboxHome({Key? key, required this.title}) : super(key: key);
  @override
  _CustomCheckboxHomeState createState() => _CustomCheckboxHomeState();
}

class _CustomCheckboxHomeState extends State<CustomCheckboxHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CheckBoxList(),
            CheckBoxListHorizontal(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class CheckBoxListHorizontal extends StatelessWidget {
  const CheckBoxListHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Horizontal",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        Text(
          "Shape Disabled",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 15),
              CustomCheckbox(text: "Monday", selected: true),
              SizedBox(width: 15),
              CustomCheckbox(text: "Tuesday", selected: true),
              SizedBox(width: 15),
              CustomCheckbox(text: "Wednesday", selected: false),
              SizedBox(width: 15),
              CustomCheckbox(text: "Thursday", selected: true),
            ],
          ),
        ),
        SizedBox(height: 15),
        Text(
          "Shape Disabled",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 15),
              CustomCheckboxShap(text: "Monday", selected: false),
              SizedBox(width: 15),
              CustomCheckboxShap(text: "Tuesday", selected: true),
              SizedBox(width: 15),
              CustomCheckboxShap(text: "Wednesday", selected: false),
              SizedBox(width: 15),
              CustomCheckboxShap(text: "Thursday", selected: true),
            ],
          ),
        ),
      ],
    );
  }
}

class CheckBoxList extends StatelessWidget {
  const CheckBoxList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Vartical",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  "Shape Disabled",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 15),
                CustomCheckbox(text: "Monday", selected: false),
                SizedBox(height: 15),
                CustomCheckbox(text: "Tuesday", selected: true),
                SizedBox(height: 15),
                CustomCheckbox(text: "Wednesday", selected: false),
                SizedBox(height: 15),
                CustomCheckbox(text: "Thursday", selected: true),
              ],
            ),
            Column(
              children: [
                Text(
                  "Shape Disabled",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 15),
                CustomCheckboxShap(text: "Monday", selected: false),
                SizedBox(height: 15),
                CustomCheckboxShap(text: "Tuesday", selected: true),
                SizedBox(height: 15),
                CustomCheckboxShap(text: "Wednesday", selected: false),
                SizedBox(height: 15),
                CustomCheckboxShap(text: "Thursday", selected: true),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class CustomCheckbox extends StatefulWidget {
  final String text;
  final bool selected;
  CustomCheckbox({
    required this.text,
    required this.selected,
  });

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  late bool _isSelected = widget.selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.decelerate,
        decoration: BoxDecoration(
            color: _isSelected ? Colors.blue : Colors.transparent,
            border: _isSelected
                ? null
                : Border.all(
                    color: Colors.blue,
                  )),
        width: MediaQuery.of(context).size.width / 2.2,
        height: 50,
        child: _isSelected
            ? Center(
                child: Text(
                  widget.text,
                  style: kFont2,
                ),
              )
            : Center(
                child: Text(
                  widget.text,
                  style: kFont2.copyWith(color: Colors.black),
                ),
              ),
      ),
    );
  }
}

class CustomCheckboxShap extends StatefulWidget {
  final String text;
  final bool selected;
  CustomCheckboxShap({
    required this.text,
    required this.selected,
  });

  @override
  _CustomCheckboxShapState createState() => _CustomCheckboxShapState();
}

class _CustomCheckboxShapState extends State<CustomCheckboxShap> {
  late bool _isSelected = widget.selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.decelerate,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: _isSelected ? Colors.blue : Colors.transparent,
            border: _isSelected
                ? null
                : Border.all(
                    color: Colors.blue,
                  )),
        width: MediaQuery.of(context).size.width / 2.2,
        height: 50,
        child: _isSelected
            ? Center(
                child: Text(
                  widget.text,
                  style: kFont2,
                ),
              )
            : Center(
                child: Text(
                  widget.text,
                  style: kFont2.copyWith(color: Colors.black),
                ),
              ),
      ),
    );
  }
}
