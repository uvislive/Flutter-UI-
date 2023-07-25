import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroApp extends StatefulWidget {
  const IntroApp({Key? key}) : super(key: key);

  @override
  State<IntroApp> createState() => _IntroAppState();
}

class _IntroAppState extends State<IntroApp> {
  @override
  Widget build(BuildContext context) {
return Scaffold(

  body:IntroductionScreen(
    pages: [
      
    ],
  ) ,


);
  }
}
