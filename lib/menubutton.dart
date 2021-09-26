import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  String? dropdownvalue = 'Apple';
  var items = [
    'Apple',
    'Banana',
    'Grapes',
    'Orange',
    'watermelon',
    'Pineapple'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DropdownButton(
            underline: Divider(
              color: Colors.purpleAccent,
            ),
            alignment: Alignment.topRight,
            borderRadius: BorderRadius.circular(15),
            elevation: 0,
            dropdownColor: Colors.purpleAccent[100],
            value: dropdownvalue,
            icon: Icon(Icons.keyboard_arrow_down),
            items: items.map((String items) {
              return DropdownMenuItem(value: items, child: Text(items));
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
