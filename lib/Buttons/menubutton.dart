import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DropdownMenuButton extends StatefulWidget {
  final String title;
  
  const DropdownMenuButton({Key? key, required this.title}) : super(key: key);

  @override
  _DropdownMenuButtonState createState() => _DropdownMenuButtonState();
}

class _DropdownMenuButtonState extends State<DropdownMenuButton> {
  String? dropdownvalue = 'Apple';
  var items = ['Apple', 'Banana', 'Grapes', 'Orange', 'Watermelon', 'Pinepale'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          DropdownButton(
            //customise underline
            underline: Divider(
              color: Colors.purpleAccent,
            ),
            //alignment for text wich show after selection
            alignment: Alignment.topRight,
            //border radius of dropdown menu
            borderRadius: BorderRadius.circular(15),
            //elevation of dropdown menu
            elevation: 0,
            //dropdown menu color
            dropdownColor: Colors.purpleAccent[100],
            //reduse height of button
            isDense: false,
            //height of item
            itemHeight: 60,
            //is expanded expand dropdown menu and item
            isExpanded: true,
            //style of text
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
            //default value
            value: dropdownvalue,
            //icon for open dropdown menu
            icon: Icon(Icons.keyboard_arrow_down),
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
                alignment: Alignment.centerRight,
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                if (newValue == dropdownvalue) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: const Text("It's Already selected"),
                        actions: [
                          TextButton(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  dropdownvalue = newValue;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
