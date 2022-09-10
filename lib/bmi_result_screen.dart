// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final bool? isMale;
  final double? height;
  final int? weight;
  final int? age;
  final int? result;
  BMIResultScreen(
      {@required this.isMale,
      @required this.age,
      @required this.height,
      @required this.weight,
      @required this.result});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_arrow_left),
          ),
          title: Center(
            child: Text(
              'Your Result',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Color.fromARGB(230, 19, 0, 48),
          toolbarHeight: 60,
        ),
        backgroundColor: Color.fromARGB(230, 19, 0, 48),
        body: Column(children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(230, 19, 0, 48),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      (result! >= 19.5 && result! <= 24.5)
                          ? 'Normal'
                          : 'Not normal',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Result is $result',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        (result! >= 19.5 && result! <= 24.5)
                            ? 'You have a normal body weight .. Good job :)'
                            : 'You have to do exercises ..',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.pink,
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                'RE-CALCULATER',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
