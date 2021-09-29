import 'package:flutter/material.dart';

class ElevatedButtonDemo extends StatefulWidget {
  final String title;
  const ElevatedButtonDemo({Key? key, required this.title}) : super(key: key);

  @override
  _ElevatedButtonDemoState createState() => _ElevatedButtonDemoState();
}

List<IconData> icon = [
  Icons.local_car_wash,
  Icons.directions_bus_rounded,
  Icons.motorcycle_rounded,
  Icons.access_alarms_sharp,
  Icons.airplanemode_active
];

List<String> iconName = [
  "Car",
  "Bus",
  "Bike",
  "Clock",
  "Airplane",
];

class _ElevatedButtonDemoState extends State<ElevatedButtonDemo> {
  int i = 0;
  Widget topHorizontalScroll(Function(String) callback) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: icon.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              // style,
              onPressed: () {
                callback('$index');
                setState(() {
                  i = index;
                });
                print(i);
              },
              icon: Icon(
                icon[index],
              ),
              label: Text(iconName[index]),
            ),
          );
        },
      ),
    );
  }

  Widget bodyPart(int i) {
    return Expanded(
        child: Container(
      height: double.infinity,
      // color: Colors.red,
      child: Icon(
        icon[i],
        size: 50,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          topHorizontalScroll((value) {
            print(value);
          }),
          bodyPart(i),
        ],
      ),
    );
  }
}
