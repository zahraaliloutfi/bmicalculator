// ignore_for_file: prefer_const_constructors

import 'package:bmicalculator/bmi_result_screen.dart';
import 'package:bmicalculator/bmiscreen1.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BmiScreen());
  }
}

void main(List<String> args) {
  runApp(MyApp());
}
