import 'package:flutter/material.dart';

class Practical6 extends StatefulWidget {
  const Practical6({super.key});

  @override
  State<Practical6> createState() => _Practical6State();
}

class _Practical6State extends State<Practical6> {
  TextEditingController mycontroller = TextEditingController();
  String? msg = "ANDROID";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              msg!,
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(
              height: 26,
            ),
            TextField(
              controller: mycontroller,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(25))),
            ),
            SizedBox(
              height: 26,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    msg = mycontroller.text.toString();
                  });
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
