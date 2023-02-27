import 'package:flutter/material.dart';

class Practical3 extends StatefulWidget {
  const Practical3({super.key});

  @override
  State<Practical3> createState() => _Practical3State();
}

class _Practical3State extends State<Practical3> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  double? result;

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
            TextFormField(
              controller: num1controller,
              decoration: const InputDecoration(
                focusedBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.greenAccent)),
                label: const Text("Enter Number1"),
                hintText: "Enter Number1",
              ),
            ),
            TextFormField(
              controller: num2controller,
              decoration: const InputDecoration(
                focusedBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.greenAccent)),
                label: const Text("Enter Number2"),
                hintText: "Enter Number2",
              ),
            ),
            RadioListTile(
                title: Text("Addition"),
                value: "Addition",
                groupValue: result,
                onChanged: (((value) {
                  setState(() {
                    int sum = int.parse(num1controller.text) +
                        int.parse(num2controller.text);
                    result = sum.toDouble();
                  });
                }))),
            RadioListTile(
                title: Text("Substraction"),
                value: "Substraction",
                groupValue: result,
                onChanged: (((value) {
                  setState(() {
                    int sum = int.parse(num1controller.text) -
                        int.parse(num2controller.text);
                    result = sum.toDouble();
                  });
                }))),
            RadioListTile(
                title: Text("multiply"),
                value: "multiply",
                groupValue: result,
                onChanged: (((value) {
                  setState(() {
                    int sum = int.parse(num1controller.text) *
                        int.parse(num2controller.text);
                    result = sum.toDouble();
                  });
                }))),
            RadioListTile(
                title: Text("division"),
                value: "division",
                groupValue: result,
                onChanged: (((value) {
                  setState(() {
                    int sum = int.parse(num1controller.text) ~/
                        int.parse(num2controller.text);
                    result = sum.toDouble();
                  });
                }))),
            Text('Result : $result'),
          ],
        ),
      ),
    );
  }
}
