import 'package:flutter/material.dart';

import 'package:flutter_application_1/constant.dart';

class FloatingActionButtonDemo extends StatefulWidget {
  final String title;
  const FloatingActionButtonDemo({Key? key, required this.title})
      : super(key: key);

  @override
  _FloatingActionButtonDemoState createState() =>
      _FloatingActionButtonDemoState();
}

class _FloatingActionButtonDemoState extends State<FloatingActionButtonDemo> {
  bool isOpen = false;

  popUp() {
    showMenu<String>(
      color: Colors.transparent,
      useRootNavigator: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      context: context,
      position: RelativeRect.fromLTRB(
          MediaQuery.of(context).size.width / 1.5,
          MediaQuery.of(context).size.height / 1.7,
          0.0,
          25.0), //position where you want to show the menu on screen
      items: [
        PopupMenuItem(
          onTap: () {
            setState(() {
              isOpen = !isOpen;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: PopupmenuItem(
              name: "Copy",
              icon: Icons.copy,
            ),
          ),
        ),
        PopupMenuItem(
          onTap: () {
            setState(() {
              isOpen = !isOpen;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: PopupmenuItem(
              name: "Paste",
              icon: Icons.paste,
            ),
          ),
        ),
        PopupMenuItem(
          onTap: () {
            setState(() {
              isOpen = !isOpen;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: PopupmenuItem(
              name: " Cut",
              icon: Icons.cut,
            ),
          ),
        ),
      ],
      elevation: 0,
    ).then<void>((String? itemSelected) {
      if (itemSelected == null) return;

      if (itemSelected == "Cut") {
        //code here
      } else if (itemSelected == "Paste") {
        //code here
      } else {
        //code here
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          height: 80,
          width: 80,
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              popUp();
              setState(() {
                print(isOpen);
                isOpen = !isOpen;
                print(isOpen);
              });
            },
            child: Icon(
              isOpen
                  ? Icons.keyboard_arrow_down_rounded
                  : Icons.keyboard_arrow_up_rounded,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}

class PopupmenuItem extends StatelessWidget {
  final String? name;
  final IconData? icon;
  const PopupmenuItem({
    Key? key,
    this.name,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              name ?? " ",
              style: kFont,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
