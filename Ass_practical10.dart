import 'package:flutter/material.dart';

class Practical10 extends StatefulWidget {
  const Practical10({super.key});

  @override
  State<Practical10> createState() => Practical10State();
}

class Practical10State extends State<Practical10> {
  int change_value = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
                min: 1,
                max: 100,
                activeColor: Colors.blueGrey,
                inactiveColor: Colors.blue,
                label: "${change_value.round()}",
                value: change_value.toDouble(),
                onChanged: (value) {
                  setState(() {
                    print("value=$change_value");
                    change_value = value.round();
                  });
                }),
            Text(
              "${change_value}",
              style: TextStyle(fontSize: 36),
            ),
            Slider(
                min: 1,
                max: 100,
                activeColor: Colors.blueGrey,
                inactiveColor: Colors.blue,
                label: "${change_value.round()}",
                value: change_value.toDouble(),
                onChanged: (value) {
                  setState(() {
                    print("value=$change_value");
                    change_value = value.round();
                  });
                }),
            Text(
              "${change_value}",
              style: TextStyle(fontSize: 36),
            ),
            Slider(
                min: 1,
                max: 100,
                activeColor: Colors.blueGrey,
                inactiveColor: Colors.blue,
                label: "${change_value.round()}",
                value: change_value.toDouble(),
                onChanged: (value) {
                  setState(() {
                    print("value=$change_value");
                    change_value = value.round();
                  });
                }),
            Text(
              "${change_value}",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
