import 'package:flutter/material.dart';

class ReactionDemo extends StatefulWidget {
  const ReactionDemo({Key? key}) : super(key: key);

  @override
  _ReactionDemoState createState() => _ReactionDemoState();
}

class _ReactionDemoState extends State<ReactionDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
      
        title: Text("Reaction Button"),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 20,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/flag/Germany.png",
                    ),
                    fit: BoxFit.cover),
              ),
              width: 50,
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
