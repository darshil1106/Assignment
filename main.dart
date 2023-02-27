import 'package:flutter/material.dart';
import 'package:myproject/Ass_practical1.dart';
import 'package:myproject/Ass_practical10.dart';
import 'package:myproject/Ass_practical2.dart';
import 'package:myproject/Ass_practical3.dart';
import 'package:myproject/Ass_practical4.dart';
import 'package:myproject/Ass_practical5.dart';
import 'package:myproject/Ass_practical6.dart';
import 'package:myproject/Ass_practical7.dart';
import 'package:myproject/Ass_practical8.dart';
import 'package:myproject/Ass_pratical9.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Practical10(),
    );
  }
}
