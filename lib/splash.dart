import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Duration duration = const Duration(seconds: 4);
    Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('home');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Hero(tag: "text",
                  child: Text("BMI CALCULATOR")),
              SizedBox(height: 20,),

              Text(
                "BMI CALCULATOR",
                style: TextStyle(fontSize: 35, color: Colors.black),
              ),


            ],
          ),
        ));
  }
}