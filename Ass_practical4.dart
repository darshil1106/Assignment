import 'package:flutter/material.dart';

class Practical4 extends StatefulWidget {
  const Practical4({super.key});

  @override
  State<Practical4> createState() => _Practical4State();
}

class _Practical4State extends State<Practical4> {
  Color? colorname;
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: status ? Colors.red : Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 50,
                width: 100,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                    ),
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(5)),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (status) {
                        status = false;
                      } else {
                        status = true;
                      }
                    });
                  },
                  child: Text("Blue"),
                )),
            Container(
                height: 50,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                    ),
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(5)),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (status) {
                        status = false;
                      } else {
                        status = true;
                      }
                    });
                  },
                  child: Text("Green"),
                )),
            Container(
                height: 50,
                width: 100,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                    ),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5)),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      colorname = Colors.blue;
                    });
                  },
                  child: Text("Blue"),
                )),
          ],
        ),
      ),
    );
  }
}
