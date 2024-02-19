import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizzproject/questions.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:5), () {
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Questions()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('CHECK YOUR IQ LEVEL'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-SzPuAFxWe6gJ4rV7KXqIm8VCUZiM3mwY5lpEemH7Oo6yXWPnZZKneFSbsDpNQ30o9EE&usqp=CAUACA')
          )],
      ),
    );
  }
}
