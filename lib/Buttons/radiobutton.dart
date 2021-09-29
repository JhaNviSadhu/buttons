import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({Key? key}) : super(key: key);

  @override
  _MyRadioButtonState createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  Object? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Radio(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            SizedBox(width: 10),
            Text("Radio 1"),
            Radio(
              value: 2,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            SizedBox(width: 10),
            Text("Radio 2"),
            Radio(
              value: 3,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            SizedBox(width: 10),
            Text("Radio 3"),
          ],
        ),
      ],
    );
  }
}

class CustomReadioButton extends StatefulWidget {
  const CustomReadioButton({Key? key}) : super(key: key);

  @override
  _CustomReadioButtonState createState() => _CustomReadioButtonState();
}

class _CustomReadioButtonState extends State<CustomReadioButton> {
  int selectedShap = 1;
  int selected = 2;

  Widget customRadio(String text, int index) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.3,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: (selected == index) ? Colors.blue : Colors.white,
          side: BorderSide(
            // style: BorderStyle.solid,
            color: Colors.blue,
          ),
        ),
        onPressed: () {
          setState(() {
            selected = index;
          });
        },
        child: Text(
          text,
          style: TextStyle(
            color: (selected == index) ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget customRadioShap(String text, int index) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.3,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: (selectedShap == index) ? Colors.blue : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          side: BorderSide(
            // style: BorderStyle.solid,
            color: Colors.blue,
          ),
        ),
        onPressed: () {
          setState(() {
            selectedShap = index;
          });
        },
        child: Text(
          text,
          style: TextStyle(
            color: (selectedShap == index) ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text("Shape Disabled"),
            SizedBox(height: 10),
            customRadio("Student", 1),
            customRadio("Parent", 2),
            customRadio("Teacher", 3),
          ],
        ),
        Column(
          children: [
            Text("Shape Enabled"),
            SizedBox(height: 10),
            customRadioShap("Student", 1),
            customRadioShap("Parent", 2),
            customRadioShap("Teacher", 3),
          ],
        ),
      ],
    );
  }
}

class CustomRadioButtonHorizontal extends StatefulWidget {
  const CustomRadioButtonHorizontal({Key? key}) : super(key: key);

  @override
  _CustomRadioButtonHorizontalState createState() =>
      _CustomRadioButtonHorizontalState();
}

class _CustomRadioButtonHorizontalState
    extends State<CustomRadioButtonHorizontal> {
  int selectedShap = 1;
  int selected = 2;

  Widget customRadio(String text, int index) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.3,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: (selected == index) ? Colors.blue : Colors.white,
          side: BorderSide(
            // style: BorderStyle.solid,
            color: Colors.blue,
          ),
        ),
        onPressed: () {
          setState(() {
            selected = index;
          });
        },
        child: Text(
          text,
          style: TextStyle(
            color: (selected == index) ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget customRadioShap(String text, int index) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.3,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: (selectedShap == index) ? Colors.blue : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          side: BorderSide(
            // style: BorderStyle.solid,
            color: Colors.blue,
          ),
        ),
        onPressed: () {
          setState(() {
            selectedShap = index;
          });
        },
        child: Text(
          text,
          style: TextStyle(
            color: (selectedShap == index) ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Shape Disabled"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customRadio("Student", 1),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customRadio("Parent", 2),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customRadio("Teacher", 3),
              ),
            ],
          ),
        ),
        Text("Shape Enabled"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customRadioShap("Student", 1),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customRadioShap("Parent", 2),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customRadioShap("Teacher", 3),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
