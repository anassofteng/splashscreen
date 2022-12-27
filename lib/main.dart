import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen/secondscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const splashScreen(),
    );
  }
}

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    gotosecondscreen();
    super.initState();
  }

  gotosecondscreen() {
    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Screen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
              radius: 200,
              child: SafeArea(
                  child: Center(
                child: Image.network(
                    "https://jpeg.org/images/jpegsystems-home.jpg"),
              ))),
          Text(
            'Splash Screen',
            style: TextStyle(
              color: Color.fromARGB(235, 255, 255, 255),
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: "avenir",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.blue),
          ),
        ]),
      ),
    );
  }
}
