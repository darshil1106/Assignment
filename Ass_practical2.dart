import 'package:flutter/material.dart';

class Practical2 extends StatefulWidget {
  const Practical2({super.key});

  @override
  State<Practical2> createState() => _Practical2State();
}

class _Practical2State extends State<Practical2> {
  dynamic result;
  List abc = [];
  final _textControllerOne = TextEditingController();
  final _textControllerTwo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("App Bar"),
        ),
        body: Container(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              TextFormField(
                controller: _textControllerOne,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter First Number..",
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.verified_user_outlined),
                    suffixIcon: IconButton(
                        onPressed: () {
                          _textControllerOne.clear();
                        },
                        icon: const Icon(Icons.clear))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _textControllerTwo,
                  decoration: InputDecoration(
                      hintText: "Enter Second Number..",
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.verified_user_outlined),
                      suffixIcon: IconButton(
                          onPressed: () {
                            _textControllerTwo.clear();
                          },
                          icon: const Icon(Icons.clear))),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        int a = int.parse(_textControllerOne.text.toString());
                        int b = int.parse(_textControllerTwo.text.toString());
                        abc = [];
                        if (a > b) {
                          for (int i = a; i > b; i--) {
                            if (i != a) {
                              abc.add(i);
                            }
                          }
                          result = abc
                              .toString()
                              .replaceAll(']', '')
                              .replaceAll('[', '');
                        } else {
                          for (int i = a; i < b; i++) {
                            if (i != a) {
                              abc.add(i);
                            }
                          }
                          result = abc
                              .toString()
                              .replaceAll('[', '')
                              .replaceAll(']', '');
                        }
                      });
                    },
                    child: const Text(
                      "View",
                      style: TextStyle(),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _textControllerOne.clear();
                        _textControllerTwo.clear();

                        abc = [];
                      });
                    },
                    child: const Text("Clear")),
              ),
              abc.isNotEmpty
                  ? Container(
                      margin: const EdgeInsets.only(top: 50),
                      padding: EdgeInsets.all(20),
                      height: 250,
                      color: const Color.fromARGB(255, 165, 192, 238),
                      child: Center(
                        child: SingleChildScrollView(
                          child: Text(
                            "$result",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w200,
                              letterSpacing: 1,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox()
            ],
          ),
        ));
  }
}
