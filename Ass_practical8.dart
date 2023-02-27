import 'package:flutter/material.dart';

class Practical8 extends StatelessWidget {
  const Practical8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Images_example")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 60),
            padding: EdgeInsets.all(10),
            child: Image.asset("assets/images.jpg"),
          ),
          Container(
            margin: EdgeInsets.only(left: 60),
            padding: EdgeInsets.all(10),
            child: Image.asset("assets/images.jpg"),
          ),
          Container(
            margin: EdgeInsets.only(left: 60),
            padding: EdgeInsets.all(10),
            child: Image.asset("assets/images.jpg"),
          ),
          Container(
            margin: EdgeInsets.only(left: 60),
            padding: EdgeInsets.all(10),
            child: Image.asset("assets/images.jpg"),
          )
        ],
      ),
    );
  }
}
