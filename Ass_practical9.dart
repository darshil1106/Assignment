import 'package:flutter/material.dart';

class Practical9 extends StatefulWidget {
  const Practical9({super.key});

  @override
  State<Practical9> createState() => _Practical9State();
}

class _Practical9State extends State<Practical9> {
  TextEditingController clrcontroller = new TextEditingController();
  String? color;
  String? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TEXTFORM FIELD")),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 80, right: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RadioListTile(
                title: Text("red"),
                value: "red",
                groupValue: result,
                onChanged: (((value) {
                  setState(() {
                    result = value.toString();
                    Text(
                      " result=$result",
                      style: TextStyle(color: Colors.blue),
                    );
                  });
                }))),
            RadioListTile(
                title: Text("yellow"),
                value: "yellow",
                groupValue: result,
                onChanged: (((value) {
                  setState(() {
                    result = value.toString();
                    Text(
                      " result=$result",
                      style: TextStyle(color: Colors.black),
                    );
                  });
                }))),
            RadioListTile(
                title: Text("green"),
                value: "green",
                groupValue: result,
                onChanged: (((value) {
                  setState(() {
                    result = value.toString();
                    Text(
                      " result=$result",
                      style: TextStyle(color: Colors.green),
                    );
                  });
                }))),
            RadioListTile(
                title: Text("purple"),
                value: "purple",
                groupValue: result,
                onChanged: (((value) {
                  setState(() {
                    result = value.toString();
                    Text(
                      " result=$result",
                      style:
                          TextStyle(color: Color.fromARGB(255, 212, 186, 217)),
                    );
                  });
                }))),
            Text(" result=$result")
          ],
        ),
      ),
    );
  }
}
