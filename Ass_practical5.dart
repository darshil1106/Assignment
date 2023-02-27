import 'package:flutter/material.dart';

class Practical5 extends StatefulWidget {
  const Practical5({super.key});

  @override
  State<Practical5> createState() => _Practical5State();
}

class _Practical5State extends State<Practical5> {
  double custfontsize = 12;

  ElevatedButton? elvbutton1;
  ElevatedButton? evlbutton2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                child: Text("Hello Welcome",
                    style: TextStyle(
                        fontSize: custfontsize, color: Colors.white))),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    custfontsize++;
                  });
                },
                child: Text("+")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    custfontsize--;
                  });
                },
                child: Text(
                  "-",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
