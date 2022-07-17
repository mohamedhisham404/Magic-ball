import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text("Ask me any thing"),
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  child: Image(image: AssetImage("images/ball$ball.png")),
                  onPressed: () {
                    setState(() {
                      ball = Random().nextInt(5) + 1;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
