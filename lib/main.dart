import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(245, 244, 236, 236),
        appBar: AppBar(
          title: Text(
            'Matching game',
            style: TextStyle(fontSize: 32, fontStyle: FontStyle.normal),
          ),
          backgroundColor: Color.fromARGB(255, 40, 58, 118),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://img.freepik.com/premium-vector/frame-illustration-square-various-fruits_623790-1528.jpg?w=2000'))),
          child: imagepage(),
        ),
      ),
    ),
  );
}

class imagepage extends StatefulWidget {
  const imagepage({super.key});

  @override
  State<imagepage> createState() => _imagepageState();
}

class _imagepageState extends State<imagepage> {
  int leftimage = 1;
  int rightimage = 3;
  void ImageMethod() {
    leftimage = Random().nextInt(9) + 1;
    rightimage = Random().nextInt(9) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          leftimage == rightimage ? "Congrats!" : 'TRY AGAIN!',
          style: TextStyle(
              color: Color.fromARGB(255, 227, 37, 37),
              fontSize: 29,
              fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  ImageMethod();
                });
              },
              child: Image.asset(
                'lib/images/m$leftimage.png',
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width * .3,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  ImageMethod();
                });
              },
              child: Image.asset(
                'lib/images/m$rightimage.png',
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width * .3,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
